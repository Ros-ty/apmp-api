class CategorySerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :content
  has_many :forms
end
