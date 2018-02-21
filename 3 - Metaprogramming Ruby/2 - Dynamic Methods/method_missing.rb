# Method Missing

class Spy
	def method_missing(method, *args, &block)
		p "method_missing #{method} was called with #{args} and #{block}"
	end
end

Spy.new.hello
Spy.new.hello(1)
Spy.new.hello(1, 2, 3)

Spy.new.hello { |a| a }

class MethodCall
  def initialize(sym, args)
    @sym = sym
    @args = args
  end
  
  def sym
    @sym
  end
  
  def args
    @args
  end
  
  def ==(other_call)
    @sym == other_call.sym && @args == other_call.args
  end
end

class Spy
  def initialize
    @method_calls = []
  end
  
  def method_missing(sym, *args, &block)
    @method_calls << MethodCall.new(sym, args)
  end

  def method_called?(sym, *args)
    @method_calls.include?(MethodCall.new(sym, args))
  end
end