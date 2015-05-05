require 'ivy/serializers'
require 'ivy/serializers/rails/action_controller/serialization_support'
require 'rails'

module Ivy
  module Serializers
    module Rails
      class Railtie < ::Rails::Railtie
        initializer 'ivy.serializers.controllers' do
          ActiveSupport.on_load(:action_controller) do
            include ::Ivy::Serializers::Rails::ActionController::SerializationSupport
          end
        end
      end
    end
  end
end
