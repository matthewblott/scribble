class Note < ApplicationRecord
  before_validation :generate_uuid, on: :create
  attr_accessor :img
  belongs_to :user

  private

  def generate_uuid
    self.id ||= SecureRandom.uuid
  end
end
