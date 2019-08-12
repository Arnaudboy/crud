class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
    	t.string :titre
    	t.text :content
    	t.string :author

      t.timestamps
    end
  end
end
