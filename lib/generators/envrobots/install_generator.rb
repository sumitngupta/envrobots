module Envrobots
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      def copy_robots
        copy_file 'robots.txt', 'config/robots/robots.production.txt'
      end
    end
  end
end
