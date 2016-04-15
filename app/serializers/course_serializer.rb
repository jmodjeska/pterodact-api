class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :catalog, :description
end
