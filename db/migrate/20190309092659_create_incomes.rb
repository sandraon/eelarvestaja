class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.float :summa
      t.string :selgitus
      t.date :kuupaev
      t.boolean :laekunud
      t.boolean :igakuine

      t.timestamps
    end
  end
end
