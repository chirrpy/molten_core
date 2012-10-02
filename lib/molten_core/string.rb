class String
  def integer?
    self.match /^\d+$/
  end

  def to_strict_i(base = 10)
    self.integer? ? self.to_i(base) : nil
  end
end
