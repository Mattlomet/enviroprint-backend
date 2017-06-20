class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.decimal :day
      t.decimal :month
      t.decimal :year
      t.integer :user_id

      t.timestamps
    end
  end
end
