class AddCalculatedFieldsToActivity < ActiveRecord::Migration
  def self.up
    add_column :activities, :average_speed, :decimal
    add_column :activities, :slope, :decimal
    Activity.all.each { |a| a.save! }
  end

  def self.down
    remove_column :activities, :average_speed
    remove_column :activities, :slope
  end
end
