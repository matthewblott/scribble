class Note < ApplicationRecord
  before_validation :generate_uuid, on: :create
  attr_accessor :img

  private

  def generate_uuid
    self.id ||= SecureRandom.uuid
  end
end
