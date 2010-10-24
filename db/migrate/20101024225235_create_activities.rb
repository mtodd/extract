class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.integer :user_id
      
      t.date :day
      t.time :time
      t.string :activity
      t.string :location
      t.decimal :temperature
      t.string :equipment
      t.time :duration
      t.decimal :distance
      t.decimal :max_speed
      t.decimal :average_heart_rate
      t.decimal :max_heart_rate
      t.integer :calories
      t.integer :max_elevation
      t.integer :total_elevation_gain
      t.integer :total_elevation_loss
      t.text :with
      t.integer :average_cadence
      t.text :route
      t.text :notes
      t.text :link
      t.text :weather
      t.integer :how_i_felt

      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
