# Streams
# open the file "new-fd" and create a file descriptor:
fd = IO.sysopen("new-fd", "w")

# create a new I/O stream using the file descriptor for "new-fd":
p IO.new(fd)

io_streams = Array.new
ObjectSpace.each_object(IO) { |x| io_streams << x }

p io_streams

# Standard Output, Input and Error
p STDOUT.class
p STDOUT.fileno

p STDIN.class
p STDIN.fileno

p STDERR.class
p STDERR.fileno

p $stdin.object_id
p STDIN.object_id

p $stdout.object_id
p STDOUT.object_id

p $stderr.object_id
p STDERR.object_id

capture = StringIO.new
$stderr = capture
$stderr.puts "H"