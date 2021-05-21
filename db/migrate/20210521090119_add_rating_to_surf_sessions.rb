class AddRatingToSurfSessions < ActiveRecord::Migration[6.1]
  def change
    add_column :surf_sessions, :rating, :integer
  end
end
