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

if !File.exist?('subprojects.txt')
  STDERR.puts "subprojects.txt not found"
  exit 1
end

subprojects = File.readlines('subprojects.txt')
  .reject(&:empty?) # empty line
  .reject { _1.start_with?('#') } # comment
  .map { _1.split.first } # allow comments after the URL

subprojects.each { clone_subproject(_1) }
