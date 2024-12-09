class NoteMailer < ApplicationMailer
  default from: "notifications@example.com"

  def new_note
    @user = params[:user]
    @img = params[:img]
    mail(to: @user.email, subject: "New Note")
  end
end
