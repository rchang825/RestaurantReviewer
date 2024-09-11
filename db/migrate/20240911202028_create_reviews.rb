class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.string :summary
      t.integer :reviewed_restaurant_id
      t.integer :reviewer_id

      t.timestamps
    end
  end
end
