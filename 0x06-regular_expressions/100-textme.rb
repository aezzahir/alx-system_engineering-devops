#!/usr/bin/env ruby

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} 'log_entry'"
  exit 1
end

# Get the log entry from the command line argument
log_entry = ARGV[0]

# Extract sender, receiver, and flags using regular expressions
sender = log_entry.match(/\[from:(.*?)\]/)[1]
receiver = log_entry.match(/\[to:(.*?)\]/)[1]
flags = log_entry.match(/\[flags:(.*?)\]/)[1]

# Output the extracted information
puts "#{sender},#{receiver},#{flags}"
