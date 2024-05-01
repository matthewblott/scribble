class NotesController < ApplicationController
  include Pagy::Backend
  before_action :set_note, only: %i[destroy]

  def index
    count = 1
    @pagy, @notes = pagy(Note.all.order(created_at: :desc), items: count)
  end

  def new
    @note = Note.new
  end

  def create

    @note = Note.new
    @note.text = params[:text]
    @note.img = params[:img]
    @note.user = current_user

    UserMailer.with(user: current_user).welcome_email.deliver_later

    # Required to generate the id
    @note.validate!

    image_data = @note.img
    image_data = image_data.sub("data:image/png;base64,", "")

    File.open(Rails.root.join("public", "uploads", "#{@note.id}.png"), "wb") do |file|
      file.write(Base64.decode64(image_data))
    end

    if @note.save
      redirect_to(@note, notice: "Note was successfully created.")
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def destroy
    @note.destroy!
    redirect_to(notes_url, notice: "Note was successfully destroyed.", status: :see_other)
  end

  private
  def generate_uuid
    self.id ||= SecureRandom.uuid
  end

  private
  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.permit(:text, :img)
  end
end
