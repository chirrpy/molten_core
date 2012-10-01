class Array
  def delete!(default = nil, &block)
    index_of_item = self.index(&block)

    return default unless index_of_item.present?

    self.delete_at index_of_item
  end

  def compact_blank!
    self.delete_if { |item| item.blank? }
  end

  def deep_strip!
    self.each_with_index do |value, index|
      if value.respond_to?(:strip)
        self[index] = value.strip
      elsif value.respond_to?(:deep_strip!)
        self[index] = value.deep_strip!
      end
    end
  end
end
