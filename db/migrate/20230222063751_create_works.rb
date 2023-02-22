class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.integer :user_id
      t.string :client_name
      t.string :contact_label
      t.text :contact_url
      t.string :document_label
      t.text :document_url
      t.date :due
      t.text :memo

      t.timestamps
    end
  end
end
