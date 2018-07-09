class CommentSerializer < ActiveModel::Serializer
  attributes :id,
             :author,
             :content,
             :answer_id
end
