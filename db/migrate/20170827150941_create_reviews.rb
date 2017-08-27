class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.float :food
      t.float :cleanliness
      t.float :safety
      t.float :locality
      t.float :facility
      t.text :body
      t.integer :user_id
      t.integer :room_id

      t.timestamps null: false
    end
  end
end
