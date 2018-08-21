class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :form_name
      t.string :form_type
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
