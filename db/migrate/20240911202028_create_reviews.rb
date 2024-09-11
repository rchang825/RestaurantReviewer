class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.string :summary
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps
    end
  end
end
