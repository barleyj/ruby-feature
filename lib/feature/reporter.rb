require 'logger'

class Feature::Reporter
  def report(feature)
    throw "Not Implemented"
  end
end

class LogReporter < Feature::Reporter
  @@logger = Logger.new(STDOUT)
  
  def self.configure(logger)
    @@logger = logger
  end
  
  def self.report(message)
    @@logger.info(message)
  end

  def self.report_error(message)
    @@logger.error(message)
  end
end
