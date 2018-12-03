class HomePageController < ApplicationController
    def show
    
    end    

    def search
     if params[:region].blank? || params[:time].blank?
        flash[:error] = "Missing input fields"         
        redirect_to "/search"
      # elsif
      #   params[:time].to_i < Time.now.strftime("%I:%M%p").to_i
      #   flash[:error] = "passengers number can not be less than 1"
      #   redirect_to "/search"
    else 

        @tickets =  Ticket.find_ticket(params[:region], params[:time])   
         Array(@tickets).delete_if do |ticket|
          if (ticket.capacity-ticket.booked_no) < 0
            true
          else
            false
          end

       end
      end
     
   end

end
