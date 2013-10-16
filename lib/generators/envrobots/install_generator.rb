module Envrobots
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      def copy_robots
        copy_file 'robots.production.txt', 'config/robots/robots.production.txt'
        copy_file 'robots.other.txt', 'config/robots/robots.other.txt'
      end
    end
  end
end
