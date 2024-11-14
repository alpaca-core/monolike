# Copyright (c) Alpaca Core
# SPDX-License-Identifier: MIT
#
def pull_subproject(sp)
  dir = File.basename(sp)
  if !File.directory?(dir)
    puts "Directory #{dir} doesn't exist, skipping"
    return
  end

  puts "Pulling #{sp}"
  STDOUT.flush
  Dir.chdir(dir) {
    system('git pull -r')
  }
end

subprojects = File.readlines('subprojects.txt').map { _1.split.first }.reject(&:empty?)

subprojects.each { pull_subproject(_1) }
