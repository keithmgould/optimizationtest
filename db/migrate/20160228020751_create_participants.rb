class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :race_id, null: false
      t.timestamps
    end
  end
end
