class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.references :user, foreign_key: true
      t.string :model
      t.string :color
      t.string :lcp
      t.string :repair

      t.timestamps
    end
  end
end
