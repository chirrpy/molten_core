class String
  def only_digits?
    self.match /^\d+$/
  end

  def to_strict_i(base = 10)
    self.only_digits? ? self.to_i(base) : nil
  end
end
