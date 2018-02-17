# Throw and Catch
floor = [["blank", "blank", "blank"],
         ["gummy", "blank", "blank"],
         ["blank", "blank", "blank"]]

candy = nil
attempts = 0
floor.each do |row|
  row.each do |tile|
    attempts += 1
    candy = tile if tile == "jawbreaker" || tile == "gummy"
  end
end
puts candy
puts attempts

# Notice that even though we found a gummy on the fourth tile, we still checked all the remaining tiles, totally nine attempts.

# throw and catch can save us this extra work by "jumping out" of the two loops. 
# This is the canonical example because it's easy to see that a simple break statement would only escape the inner loop.
attempts = 0
candy = nil
catch(:found) do
	floor.each do |row|
		row.each do |tile|
			attempts += 1
			if tile == "jawbreaker" || tile == "gummy"
				candy = tile
				throw(:found)
			end
		end
	end
end

puts candy
puts attempts

puts
# Jump out with a payload
attempts = 0
candy = catch(:found_candy) do
	floor.each do |row|
		row.each do |tile|
			attempts += 1
			throw(:found_candy, tile) if tile == "jawbreaker" || tile == "gummy"
		end
	end
end
puts candy
puts attempts