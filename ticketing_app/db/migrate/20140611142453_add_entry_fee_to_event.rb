class AddEntryFeeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :entry_fee, :integer
  end
end
