class Form < ApplicationRecord
  # model association
  belongs_to :category
  FORM_TYPES = [ "String", "File" ]
  # validations
  validates :form_name,
          	presence: { message: "can't be blank." },
            length: { minimum: 2, message: "must be more than 2 characters" }
  validates :form_type, inclusion: FORM_TYPES
end
