class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.integer :age
      t.string :super_power
      t.text :description

      t.timestamps
    end
  end
end
