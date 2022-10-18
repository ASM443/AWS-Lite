class CreateTestudos < ActiveRecord::Migration[7.0]
  def change
    create_table :testudos do |t|
      t.string :buildingName
      t.boolean :testudoPresnt
      t.string :region
      t.string :string

      t.timestamps
    end
  end
end
