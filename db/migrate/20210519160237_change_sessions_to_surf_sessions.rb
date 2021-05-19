class ChangeSessionsToSurfSessions < ActiveRecord::Migration[6.1]
  def change
    rename_table :sessions, :surf_sessions
  end
end
