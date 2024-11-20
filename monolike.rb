# Copyright (c) Alpaca Core
# SPDX-License-Identifier: MIT
#
if ARGV.empty?
  puts "no args"
  exit 1
end

cmd = ARGV.shift

system("ruby #{__dir__}/mono-#{cmd}.rb", *ARGV)
