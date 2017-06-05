class TaskSerializer < ActiveModel::Serializer
  attributes :id, :text, :due_date, :manager_id, :employee_id
end
