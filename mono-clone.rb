# Copyright (c) Alpaca Core
# SPDX-License-Identifier: MIT
#
def clone_subproject(sp)
  dir = File.basename(sp)
  if File.directory?(dir)
    puts "Directory #{dir} already exists, skipping"
    return
  end

  puts "Cloning #{sp}"
  `git clone #{sp} --recurse-submodules`
end

subprojects = File.readlines('subprojects.txt').map { _1.split.first }.reject(&:empty?)

p subprojects

# subprojects.each { clone_subproject(_1) }
