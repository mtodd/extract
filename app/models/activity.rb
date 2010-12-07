class Activity < ActiveRecord::Base
  belongs_to :user
  
  before_save :set_slope
  before_save :set_average_speed
  
  private
  def set_slope
    unless total_elevation_gain.blank? || distance.blank?
      self.slope = BigDecimal.new(sprintf( "%.2f", (total_elevation_gain.to_f / (5280 * distance.to_f)) * 100 * 2))
    end
  end
  
  def set_average_speed
    unless distance.blank? || duration.blank?
      self.average_speed = BigDecimal.new(sprintf( "%.2f", (distance.to_f / duration.to_f) * 3600,2))
    end
  end
  
end
