class AddIndexRaceIdToParticipants < ActiveRecord::Migration
  def change
    add_index :participants, :race_id
  end
end
