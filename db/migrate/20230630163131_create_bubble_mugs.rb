class CreateBubbleMugs < ActiveRecord::Migration[7.0]
  def change
    create_table :bubble_mugs do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :size

      t.timestamps
    end
  end
end
