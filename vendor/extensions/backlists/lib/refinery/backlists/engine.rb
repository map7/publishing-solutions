module Refinery
  module Backlists
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Backlists

      engine_name :refinery_backlists

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "backlists"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.backlists_admin_backlists_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Backlists)
      end
    end
  end
end
