class ManagerSerializer < EmployeeSerializer
  attributes :id, :name, :last_name, :position, :type, :tasks, :reports, :employees

  def name
    object.first_name + " " + object.last_name
  end
end
