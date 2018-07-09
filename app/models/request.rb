class Request < ApplicationRecord
  # model association
  has_many :answers, :dependent => :destroy
  # validations
  validates :title, :content, 
          	presence: { message: "can't be blank." },
          	length: { minimum: 2, message: "must be more than 2 characters" }
end
