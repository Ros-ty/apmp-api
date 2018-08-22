class Category < ApplicationRecord
  # model association
  has_many :forms, dependent: :destroy, inverse_of: :category
  accepts_nested_attributes_for :forms, allow_destroy: true, reject_if: ->(attrs) { attrs['form_name'].blank? || attrs['form_type'].blank? }
  # validations
  validates :name, :content,
          	presence: { message: "can't be blank." },
          	length: { minimum: 2, message: "must be more than 2 characters" }
  #image validations
  # has_attached_file :image, styles: { medium: "300300>", thumb: "150x150>" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
