class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :location
      t.text :name
      t.text :content
      t.text :stars

      t.timestamps
    end
  end
end
