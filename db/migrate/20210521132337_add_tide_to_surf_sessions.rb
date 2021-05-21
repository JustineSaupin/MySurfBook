class AddTideToSurfSessions < ActiveRecord::Migration[6.1]
  def change
    add_column :surf_sessions, :tide, :string
  end
end
