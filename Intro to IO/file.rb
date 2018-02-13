# Using the 'File' Class
# mode ref: http://ruby-doc.org/core-1.9.3/IO.html
mode = "r+" # r+ read-write mode, w write-only mode
file = File.open("friend-list.txt", mode)
puts file.inspect
puts file.read
file.close

# File.open also takes an optional block which will auto-close the file you opened once you are done with it.
what_am_i = File.open("clean-slate.txt", 'w') do |file|
	file.puts "Call me Ishmael."
end

p what_am_i

File.open("clean-slate.txt", "r") { |file| puts file.read }

puts
# Reading and writing
file = File.open("clean-slate.txt", "r+")

p file.read
file.rewind
buffer = ""
p file.read(5, buffer)
p buffer
file.close

puts
p File.read("clean-slate.txt")
File.open("clean-slate.txt") do |f|
	f.seek(2, IO::SEEK_SET)
	p f.read(5)
end

puts
lines = File.readlines("friend-list.txt")
p lines
p lines[0]

puts
File.open("friend-list.txt", "w") do |f|
	puts f.write("friend")
end