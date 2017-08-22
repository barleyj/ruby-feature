class Feature::Feature
  @@name = nil
  @@reporter = nil
  
  def self.configure(reporter)
    @@reporter = reporter
  end
  
  def self.do
    if @@reporter
      @@reporter.report("#{@@name} is enabled")
    end
    
    begin
      yield
    rescue => e
      if @@reporter
        @@reporter.report("Error detected in #{@@name}: #{e}")
      end
      
      throw e
    end
  end
end

class Feature::FeatureToggle < Feature::Feature
  @@config = nil

  def self.configure(config, reporter=nil)
    @@config = config
    super(reporter)
  end
  
  def self.do
    if @@config.enabled?(@@name)
      super
    else
      if @@reporter
        @@reporter.report("#{@@name} is disabled")
      end
    end
  end
end

