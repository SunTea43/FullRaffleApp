class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.boolean :choosen, default: false
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
