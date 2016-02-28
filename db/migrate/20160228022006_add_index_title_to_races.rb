class AddIndexTitleToRaces < ActiveRecord::Migration
  def change
    add_index :races, :title
  end
end
