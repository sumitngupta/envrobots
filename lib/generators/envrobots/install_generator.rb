module Envrobots
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      def copy_robots
        path = Rails.root.join('public', 'robots.txt')
        if File.file? path
          copy_file path, 'config/robots/robots.production.txt'
          remove_file path
        else
          copy_file 'robots.production.txt', 'config/robots/robots.production.txt'
        end
        copy_file 'robots.other.txt', 'config/robots/robots.other.txt'
      end
    end
  end
end
