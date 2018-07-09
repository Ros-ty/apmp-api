class Answer < ApplicationRecord
  # model association
  belongs_to :request
  has_many :comments, dependent: :destroy
  # validations
  validates :title, :content, 
          	presence: { message: "can't be blank." },
          	length: { minimum: 2, message: "must be more than 2 characters" }
end
