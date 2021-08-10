class AddDataToVacations < ActiveRecord::Migration[6.1]
  def change
    add_column :vacations, :data, :json
  end
end
