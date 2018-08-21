class FormSerializer < ActiveModel::Serializer
  attributes :id,
             :form_name,
             :form_type
end
