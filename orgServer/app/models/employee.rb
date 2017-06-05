class Employee < ApplicationRecord

  has_many :tasks
  belongs_to :manager , optional: true

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/img/employees/missing.jpg"
  # validates_attachment :picture, presence: true
  do_not_validate_attachment_file_type :picture

end
