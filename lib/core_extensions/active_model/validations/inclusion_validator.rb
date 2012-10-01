module ActiveModel
  module Validations
    class InclusionValidator
      def validate_each(record, attribute, value)
        delimiter  = options[:in]
        exclusions = delimiter.respond_to?(:call) ? delimiter.call(record) : delimiter

        valid = if value.respond_to? :all?
                  value.all? {|v| exclusions.include? v}
                else
                  exclusions.send(inclusion_method(exclusions), value)
                end

        unless valid
          record.errors.add(attribute, :inclusion, options.except(:in).merge!(:value => value))
        end
      end
    end
  end
end
