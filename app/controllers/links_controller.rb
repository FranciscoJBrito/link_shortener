class LinksController < ApplicationController

      def create
            shortener = Shortener.new(link_params[:original_url])
            @link = shortener.generate_short_link
            respond_to do |format|
                  format.html { redirect_to root_path }
                  format.js 
            end
            #binding.pry
      end

      private

      def link_params
            params.require(:link).permit(:original_url)
      end
      
      
end