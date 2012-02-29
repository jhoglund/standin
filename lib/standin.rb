require 'standin/version'

module Standin
  mattr_accessor :layout
  @@layout = "standin"

  mattr_accessor :content_path
  @@content_path = "standin"

  def self.setup
    yield self
  end

  require 'standin/engine' if defined?(Rails)
end
