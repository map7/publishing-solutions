module Refinery
  module Backlists
    class BacklistsController < ::ApplicationController

      before_action :find_all_backlists
      before_action :find_all_genres
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @backlist in the line below:
        present(@page)
      end

      def show
        @backlist = Backlist.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @backlist in the line below:
        present(@page)
      end

    protected

    def find_all_genres
      @genres = Genre.order('name ASC')
    end

      def find_all_backlists
        @backlists = Backlist.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/backlists").first
      end

    end
  end
end
