class Category < ApplicationRecord
  # model association
  # has_many :something, dependent: :destroy
  # validations
  validates :name, :content,
          	presence: { message: "can't be blank." },
          	length: { minimum: 2, message: "must be more than 2 characters" }
  #image validations
  # has_attached_file :image, styles: { medium: "300300>", thumb: "150x150>" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
