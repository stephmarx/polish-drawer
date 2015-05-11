class CreatePolishes < ActiveRecord::Migration
  def change
    create_table :polishes do |t|
			t.string :name
			t.string :number
			t.string :brand_name
			t.string :product_line
			t.text :notes

      t.timestamps null: false
    end
  end
end
