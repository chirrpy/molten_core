module ActiveModel
  class Errors
    def to_s
      full_messages.to_sentence
    end
  end
end
