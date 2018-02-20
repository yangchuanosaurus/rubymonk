# Behaviour

class Foo
end

foo = Foo.new
p foo.send(:object_id) # same as foo.object_id
p foo.send(:class) # same as foo.class

p Foo.is_a?(Object) # true
p Foo.new.is_a?(Object) # true

# The is_a? method tells you whether the object contains behaviour of the given class.

class Bar
  def shout
    "I'm a Bar!!"
  end
end

class Foo2 < Bar
end

p Foo2.new.shout
p Foo2.superclass

class Object3
  def self.superclasses
    # your code here
    super_classes = []
    sclass = superclass
    while !sclass.nil?
      super_classes << sclass
      sclass = sclass.superclass
    end

    super_classes
  end
end

class Bar3 < Object3
end

class Foo3 < Bar3
end

p Foo3.superclasses  # should be [Bar, Object, BasicObject]

# Ancestors
p Foo3.ancestors