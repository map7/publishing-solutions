module Refinery
  module Backlists
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Backlists

      engine_name :refinery_backlists

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "genres"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.backlists_admin_genres_path }
          plugin.pathname = root
          plugin.menu_match = %r{refinery/backlists/genres(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Genres)
      end
    end
  end
end
