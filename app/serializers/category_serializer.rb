class CategorySerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :content
end
