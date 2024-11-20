# Copyright (c) Alpaca Core
# SPDX-License-Identifier: MIT
#
def pull_subproject(dir)
  puts "Pulling #{dir}"
  STDOUT.flush
  Dir.chdir(dir) {
    system('git pull -r')
  }
end

subprojects = Dir['*'].select { File.directory?(_1) }

subprojects.each { pull_subproject(_1) }
