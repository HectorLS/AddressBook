class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
    	t.belongs_to :contact, index: true
    	t.string :number
      t.timestamps null: false
    end
  end
end
