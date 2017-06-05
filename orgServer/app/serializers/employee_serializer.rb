class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_name, :position, :type, :tasks, :picture

   belongs_to :manager

  def name
    object.first_name + " " + object.last_name
  end
end
