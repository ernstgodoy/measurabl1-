class CreateAges < ActiveRecord::Migration[6.0]
  def change
    create_table :ages do |t|
      t.integer :nameId
      t.integer :age
      t.references :name, null: false, foreign_key: true

      t.timestamps
    end
  end
end
