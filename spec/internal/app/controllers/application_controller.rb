class ApplicationController < ActionController::Base
  self.serializer = DummySerializer
end
