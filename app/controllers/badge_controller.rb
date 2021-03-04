class BadgeController < ApplicationController
  
  private def badge_params
    params.require(:badge).permit(:badge_id, :badge_title, :badge_desc, :badge_img, :created_at, :awarded_at, :revoked_at, :admin_award)
  end
  
  
  
  
  
  def index
  end
  
  def find_badge
    @Badge = Badge.find_by(name: params[:badge_id])
    
    unless @Badge
      raise ActiveRecord::RecordNotFound, "Couldn't find badge '#{params[:badge_id]}'"
    end
  end
  
  def create_badge
    @Badge = Badge.new(badge_params)
    if @Badge.save 
      flash[:notice] = ts('New badge successfully created.') 
    end
  end
  
  def edit_badge
  end
  
  def add_badge
  end
  
  def revoke_badge
  end
    
  def system_revoke_badge
  end
  
  def hide_badge
  end
  
  def unhide_badge
  end
  
  def check_if_badge_secret
  end
end
