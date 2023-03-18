# frozen_string_literal: true

class ApplicationService
  # TODO: figure out if this works or not
  def self.call(*args, &block)
    new(*args, &block).call
  end
end
