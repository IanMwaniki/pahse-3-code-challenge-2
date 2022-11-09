class CreateReviews.rb < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.string  :comment
      t.integer :user_id #foreign-key-referencing-user-table.
      t.integer :product_id #foreign-key-referencing-product-table.
      #id is auto generated
    end
  end
end
