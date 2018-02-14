class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    # your code here
    orders.inject(0) do |costs, order|
    	# costs += order[:rice] * @menu[:rice] + order[:noodles] * @menu[:noodles]
    	costs + order.keys.inject(0) { |cost, key| cost + @menu[key] * order[key] }
    end
  end
end

menu = {:rice => 3, :noodles => 2}
a_restaurant = Restaurant.new(menu)

order = {:rice => 1, :noodles => 1}
puts a_restaurant.cost(order);

order1 = {:rice => 1, :noodles => 1}
order2 = {:rice => 2, :noodles => 2}
puts a_restaurant.cost(order1, order2);