class CreateApplies < ActiveRecord::Migration[5.0]
  def change
    create_table :applies do |t|
      t.references :offer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
