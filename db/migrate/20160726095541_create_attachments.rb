class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.text :file_data
      t.string :type
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
