class RequestSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :content
  # has_many :subcategories 
end