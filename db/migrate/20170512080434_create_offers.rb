class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.references :company, foreign_key: true
      t.string :title, null: false
      t.string :image
      t.text   :what
      t.text   :why
      t.text   :how
      t.timestamps
    end
  end
end
