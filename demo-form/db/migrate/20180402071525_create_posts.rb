class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.text :school
      t.text :adress

      t.timestamps
    end
  end
end
