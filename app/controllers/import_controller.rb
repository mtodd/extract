class ImportController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :user_signed_in?
  
  def index
  end
  
  def import
    if request.post?
      unless params[:csv].path.empty?
        Activity.destroy_all(:user_id => current_user.id)
        FasterCSV.foreach(params[:csv].path, :headers => :first_row, :skip_blanks => true) do |row|
          Activity.create(row.to_hash.merge(:user => current_user))
        end
        flash[:notice] = "CSV File Imported"
      end
    end
    
    redirect_to :root
  end
  
end
