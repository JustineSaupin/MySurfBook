class ChangeDateToDatetime < ActiveRecord::Migration[6.1]
  def change
    change_column :surf_sessions, :date, :datetime
  end
end
