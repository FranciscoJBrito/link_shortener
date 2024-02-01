class LinksController < ApplicationController

      def create
            shortener = Shortener.new(link_params[:original_url])
            @link = shortener.generate_short_link

            respond_to do |format|
                  format.html { redirect_to root_path }
                  format.js   # Esto buscará el archivo create.js.erb en app/views/links/
            end
      end

      private

      def link_params
            params.require(:link).permit(:original_url)
      end
      
      
end