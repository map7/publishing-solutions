module Refinery
  module Backlists
    module Admin
      class BacklistsController < ::Refinery::AdminController

        before_action :find_all_genres, :except => [:show, :destroy]

        crudify :'refinery/backlists/backlist'

        protected

        def find_all_genres
          @genres = Refinery::Backlists::Genre.all.order(:name)
        end

        private

        # Only allow a trusted parameter "white list" through.
        def backlist_params
          params.require(:backlist).permit(:title, :author, :picture_id, :genre_id)
        end
      end
    end
  end
end
