class AddWindToSurfSessions < ActiveRecord::Migration[6.1]
  def change
    add_column :surf_sessions, :wind, :string
    add_column :surf_sessions, :wave, :string
  end
end
