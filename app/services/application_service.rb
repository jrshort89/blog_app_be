class ApplicationService
    # todo: figure out if this works or not
  def self.call(*args, &block)
    new(*args, &block).call
  end
end
