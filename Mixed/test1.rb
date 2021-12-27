class MyClass
  def method_missing(method_name, *args, &block)
    if method_name == :foo
      "missing completed"
    else
      super
    end
  end
end
obj = MyClass.new
obj.foo
# obj.bar
p MyClass
