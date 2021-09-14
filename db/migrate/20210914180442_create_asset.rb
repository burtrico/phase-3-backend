class CreateAsset < ActiveRecord::Migration[6.1]
  def change
    create_table :assets do |t|
      t.string :name
      t.integer :price
      
    end
  end
end
