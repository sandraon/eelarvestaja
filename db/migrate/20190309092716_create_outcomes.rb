class CreateOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :outcomes do |t|
      t.float :summa
      t.string :selgitus
      t.date :kuupaev
      t.boolean :makstud
      t.boolean :igakuine

      t.timestamps
    end
  end
end
