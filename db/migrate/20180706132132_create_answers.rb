class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :title
      t.string :content
      t.belongs_to :request, index: true

      t.timestamps
    end
  end
end
