# Copyright (c) Alpaca Core
# SPDX-License-Identifier: MIT
#
def subproject_status(sp)
  dir = File.basename(sp)
  if !File.directory?(dir)
    puts "Directory #{dir} doesn't exist, skipping"
    return
  end

  puts "\nStatus of #{sp}"
  STDOUT.flush
  Dir.chdir(dir) {
    system('git status')
  }
end

subprojects = File.readlines('subprojects.txt').map { _1.split.first }.reject(&:empty?)

subprojects.each { subproject_status(_1) }
