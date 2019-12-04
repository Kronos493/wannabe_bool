# frozen_string_literal: true

module WannabeBool::String
  TRUES  = %W{t true on y yes 1}.each_with_object(Hash.new(false)) do |k, hash| 
    hash[k] = true
    hash[k.upcase] = true
    hash[k.downcase] = true
    hash[k.camelize] = true
  end.freeze

  def to_b
    value = self.strip
    TRUES[value]
  end

  include WannabeBool::Aliasing
end

class String
  include WannabeBool::String
end
