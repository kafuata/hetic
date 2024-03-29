

class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.datetime :published_at, default: nil
      t.decimal :price, null: false, default: 0

      t.timestamps null: false
    end
  end
end
