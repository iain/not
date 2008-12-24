module Not

  def not
    NotClass.new(self)
  end

  class NotClass

    def initialize(base)
      @base = base
      if self.class.respond_to?(:delegate_methods!)
        self.class.delegate_methods!
      end
    end

    def method_missing(method, *args, &block)
      not @base.send(method, *args, &block)
    end

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

Object.send(:include, Not)
