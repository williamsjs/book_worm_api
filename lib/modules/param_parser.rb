module ParamParser

  def self.replace_with_plus(text)
    text.split(" ").join("+") if !text.nil?
  end
  
end