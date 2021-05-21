class AddSpotTypeToSurfSessions < ActiveRecord::Migration[6.1]
  def change
    add_column :surf_sessions, :spot_type, :string
  end
end
