class Manager < Employee

  has_many :reports
  has_many :employees

end
