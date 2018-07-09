class AnswerSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :content,
             :request_id
  # belongs_to :request
end