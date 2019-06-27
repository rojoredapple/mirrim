class CreateMoods < ActiveRecord::Migration[5.1]
  def change
    create_table :moods do |t|
      t.integer :energy
      t.integer :pleasantness
      t.string :memo

      t.timestamps
    end
  end
end
