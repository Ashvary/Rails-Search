class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
    	t.string :name
    	t.string :email
    	t.string :phone
    	t.string :gender
    	t.string :link
      t.timestamps
    end
  end
end
