module Not

  # Negates any command that comes after it.
  # 
  #   @foo.nil?     # => true
  #   @foo.not.nil? # => false
  def not
    @_not_class ||= NotClass.new(self)
  end

  # NotClass is the proxy object to perform other commands from.
  class NotClass

    private

    # The not method needs to pass self to work so the Notclass
    def initialize(base)
      @base = base

      # Make the NotClass a proxy for whatever object it is called from
      if self.class.respond_to?(:delegate_methods!)
        self.class.delegate_methods!
      end
    end

    # The not-class is a proxy, but with negation. Send any method to it's base object
    def method_missing(method, *args, &block)
      not @base.send(method, *args, &block)
    end

    # Also override any methods this method has so that you can use any method,
    # including nil? and other basic methods.
    def self.delegate_methods!
      override = instance_methods.reject do |m|
        m == 'method_missing' or m[0,1] == '_' or m == 'not'
      end
      override.each do |m|
        class_eval(%Q{
          def #{m}(*args, &block)
            method_missing(:#{m}, *args, &block)
          end
        })
      end
    end
  end

end

# Apply the magic
Object.send(:include, Not)
