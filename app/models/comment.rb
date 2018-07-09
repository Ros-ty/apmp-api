class Comment < ApplicationRecord
  # model association
  belongs_to :answer
  # validations
  validates :author, :content, 
          	presence: { message: "can't be blank." },
          	length: { minimum: 2, message: "must be more than 2 characters" }
end
