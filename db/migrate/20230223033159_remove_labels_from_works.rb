class RemoveLabelsFromWorks < ActiveRecord::Migration[6.1]
  def change
    remove_column :works, :contact_label, :string
    remove_column :works, :document_label, :string
  end
end
