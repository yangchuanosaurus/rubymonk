# Define method

class Doctor
  define_method("perform_rhinoplasty") do |argument|
		"performing rhinoplasty on #{argument}"
  end

  define_method("perform_checkup") do |argument|
		"performing checkup on #{argument}"
  end
  
  define_method("perform_interpretive_dance") do |argument|
    "performing interpretive dance on #{argument}"
  end
end
doctor = Doctor.new
puts doctor.perform_rhinoplasty("nose")
puts doctor.perform_checkup("throat")
puts doctor.perform_interpretive_dance("in da club")

puts
# Real Ultimate Power
class Doctor
  ["rhinoplasty", "checkup", "interpretive_dance"].each do |action|
	  define_method("perform_#{action}") do |argument|
			"performing #{action.gsub('_', ' ')} on #{argument}"
  	end
  end
end

doctor = Doctor.new
puts doctor.perform_rhinoplasty("nose")
puts doctor.perform_checkup("throat")
puts doctor.perform_interpretive_dance("in da club")

# practice
class Monk
  # put your code here
  ["life", "the_universe", "everything"].each do |action|
    define_method("meditate_on_#{action}") do
      "knows the meaning on #{action.gsub('_', ' ')}"
    end
  end
end

monk = Monk.new
puts monk.meditate_on_life
puts monk.meditate_on_the_universe
puts monk.meditate_on_everything