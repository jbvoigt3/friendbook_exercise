class Person < ApplicationRecord
  validates_presence_of :first_name, :last_name
  validates :avatar, presence: true, uniqueness: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def get_avatar
    self.avatar.blank? ? 'default' : self.avatar
  end
end
