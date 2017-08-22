class Feature::Config
  def initialize(features={})
    @features = features
  end
  
  def enabled?(feature)
    @features.key?(feature) and @features[feature]
  end
end
