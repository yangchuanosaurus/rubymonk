# Logging

require 'logger'

# The caller method returns the stack trace as an array 
# which is pretty convenient if you want to programmatically introspect it. 
def c
	puts "I'm in C. You know who called me?"
  puts caller
end

def b
	c
end

def a
	b
end

a

# debug < info < warn < error < fatal < unknown.
logger = Logger.new($stdout)

# You can set the severity level of logging by assigning the level like so:
logger.level = Logger::WARN

logger.warn("This is a wraning")
logger.info("This is an info")

puts
#
logger.level = Logger::UNKNOWN
logger.debug("(UNKNOWN) This a debug message")
logger.unknown("(UNKNOWN) Something unknown. Oh, mystery and suspense!")
logger.error("(UNKNOWN) Error! Run! Panic!")
logger.warn("(UNKNOWN) This is a warning.")

logger.level = Logger::INFO
logger.debug("(INFO) This a debug message")
logger.unknown("(INFO) Something unknown. Oh, mystery and suspense!")
logger.error("(INFO) Error! Run! Panic!")
logger.warn("(INFO) This is a warning.")

puts
logger.level = Logger::DEBUG   # lowest severity. will print all logs.
logger.formatter = lambda do |severity, datetime, progname, msg|
  "#{datetime} - #{severity}: #{msg}\n"
end

logger.warn "A warning"
logger.info "An info"

# Exercise
class Order
  
  def initialize(order_items, customer)
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::INFO
    
    @order_items = order_items
    @customer = customer
    @state = :new
    
    @logger.info("create #{@state} by #{@customer}")
  end

  def procure(vendor)
    if @state == :new
	    @vendor = vendor
	    @state = :procured
      @logger.info("#{@vendor} procure #{@state}")
    end
  end

  def pack
    if @state == :procured
	    @state = :packed
      @logger.info("pack #{@state}")
    else
      @logger.error("error when pack #{@state}")
    end
  end

  def ship(address)
    if @state == :packed
	    @state = :shipped
	    @shipping_address = address
      @logger.info("ship to #{@shipping_address} #{@state}")
    else
      @logger.error("error when ship to #{@shipping_address} #{@state}")
    end
  end
end

order = Order.new(["mouse", "keyboard"], "Asta")
order.procure("Awesome Supplier")
order.pack
order.ship("The Restaurant, End of the Universe")
