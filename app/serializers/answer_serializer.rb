class AnswerSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :content,
             :request_id
  has_many :comments
end