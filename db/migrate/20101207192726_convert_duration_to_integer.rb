class ConvertDurationToInteger < ActiveRecord::Migration
  def self.up
    change_column :activities, :duration, :integer
  end

  def self.down
    change_column :activities, :duration, :time
  end
end
