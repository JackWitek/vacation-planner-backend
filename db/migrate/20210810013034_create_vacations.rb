class CreateVacations < ActiveRecord::Migration[6.1]
  def change
    create_table :vacations do |t|
      t.string :name
      t.date :startDate
      t.date :endDate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
