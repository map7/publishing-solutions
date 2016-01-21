module Refinery
  module Backlists
    class GenresController < ::ApplicationController

      before_action :find_all_genres
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @genre in the line below:
        present(@page)
      end

      def show
        @genre = Genre.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @genre in the line below:
        present(@page)
      end

    protected

      def find_all_genres
        @genres = Genre.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/genres").first
      end

    end
  end
end
