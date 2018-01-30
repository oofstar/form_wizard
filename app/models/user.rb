class User < ApplicationRecord

  regex = "\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b"
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates_with EmailAddress::ActiveRecordValidator, field: :email
  # validates_format_of :email, :with => \b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b
  validates :age, presence: true
  validates :height_feet, presence: true, numericality: { only_integer: true}
  validates :height_inches, presence: true, numericality: { only_integer: true}
  validates :weight, numericality: true, allow_nil: true
  validates :fave_color, presence:true
end
