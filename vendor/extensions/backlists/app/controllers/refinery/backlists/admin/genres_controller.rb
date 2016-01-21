module Refinery
  module Backlists
    module Admin
      class GenresController < ::Refinery::AdminController

        crudify :'refinery/backlists/genre',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def genre_params
          params.require(:genre).permit(:name)
        end
      end
    end
  end
end
