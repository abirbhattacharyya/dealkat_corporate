class HomeController < ApplicationController
	skip_before_filter :verify_authenticity_token 

  def index
  end

  def products
  end

  def team
  end

  def slide
    @id = 1
    if request.xhr?
        @id = params[:divid].to_i + 1
        @id = 1 if @id > 7
        render :update do |page|
            page.replace_html "popup", :partial => "home/slide"
            page.visual_effect :blind_down, "box", :duration => 0.5
        end
    end
  end

	def analytics
#			flash[:notice] = "Hey come back in a few days to learn more"
#			redirect_to root_path
	end
	
  def contact
      lat = 37.389345
      lng = -122.067073
      addr = "<b>Dealkat</b><br />82 Pioneer Way, Suite 109<br />Mountain View, CA 94041"
      addr = addr.strip.gsub(/\s/, " ")

      @map = GoogleMap.new(:zoom => 16)
      @map.markers << GoogleMapMarker.new(:map => @map, :lat => lat, :lng => lng, :html => addr)
  end
  
  def tour
  		if request.xhr?
		  		render :update do |page|
		  				page.replace_html "popup", :partial => "home/tour"
					end
			end
	end
	
  def close_tour
  		if request.xhr?
		  		render :update do |page|
		  				page.replace_html "popup", nil
					end
			end
	end
	
	def sign_up
			if request.post?
					@contact = Contact.new(params[:contact])
					if @contact.save
							emails = "dhaval.parikh33@gmail.com, abstartup@gmail.com"
							Emailer.deliver_signup('', @contact, emails)
							flash[:notice] = "Cool, your response is on it's way"
							redirect_to root_path
					end
			end
	end
end
