module Refinery
  module Backlists
    module Admin
      class BacklistsController < ::Refinery::AdminController

        crudify :'refinery/backlists/backlist'

        private

        # Only allow a trusted parameter "white list" through.
        def backlist_params
          params.require(:backlist).permit(:title, :author, :picture_id)
        end
      end
    end
  end
end
