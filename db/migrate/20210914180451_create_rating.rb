class CreateRating < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|

      t.integer :star_rating
      t.string :comment
      t.integer :user_id
      t.integer :asset_id
      
    end
  end
end
