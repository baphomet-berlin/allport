module Allport

  def self.setup(&block)
      @@config ||= Allport::Engine::Configuration.new

      yield @@config if block

      return @@config
  end

  def self.config
      Rails.application.config
  end

  class Engine < ::Rails::Engine
    isolate_namespace Allport
  end
end
