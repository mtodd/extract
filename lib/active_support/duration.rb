ActiveSupport::Duration.class_eval do

  # Turns a string into a duration. Only works for h*:m*:s* right now
  def self.parse(string)
    if string.present?
      begin
        match = string.match(/(\d+):(\d+):(\d+)/)
        return ((((match[1].to_i * 60) + match[2].to_i) * 60) + match[3].to_i).seconds
      rescue Exception
      end
    end
  end
  
end