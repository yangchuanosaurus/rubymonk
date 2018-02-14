def prettify_it
  "The result of the block was: #{yield}"
end

p prettify_it { "Hello, world"}
p prettify_it { 1 + 1 }