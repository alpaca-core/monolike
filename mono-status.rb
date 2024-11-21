# Copyright (c) Alpaca Core
# SPDX-License-Identifier: MIT
#
def subproject_status(dir)
  puts "Status of #{dir}"
  STDOUT.flush
  Dir.chdir(dir) {
    system('git status')
  }
end

subprojects = Dir['*'].select { File.directory?(_1) }

subprojects.each { subproject_status(_1) }
