class DynamicMethods
  def initialize(methods_hash)
    methods_hash.each do |method_name, value|
      define_singleton_method(method_name) { puts "#{method_name}: #{value}" }
    end
  end
end

# Uso:
methods = { hello: "world", foo: "bar", calculate: 42 }
obj = DynamicMethods.new(methods)
obj.hello    # Output: hello: world
obj.foo      # Output: foo: bar
obj.calculate # Output: calculate: 42