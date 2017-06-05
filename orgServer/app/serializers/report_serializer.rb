class ReportSerializer < ActiveModel::Serializer
  attributes :id, :text, :manager_id, :employee
end
