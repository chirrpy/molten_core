class Hash
  def deep_strip!
    self.each do |key, value|
      if value.respond_to?(:strip)
        self[key] = value.strip
      elsif value.respond_to?(:deep_strip!)
        self[key] = value.deep_strip!
      end
    end
  end
end
