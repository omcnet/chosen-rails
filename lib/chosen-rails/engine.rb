module Chosen
  module Rails
    class Engine < ::Rails::Engine
      initializer :assets do |config|
       ::Rails.application.config.assets.precompile += %w{ chosen-sprite*.png }
      end

      rake_tasks do
        load 'chosen-rails/tasks.rake'
      end
    end
  end
end
