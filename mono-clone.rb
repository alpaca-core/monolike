# Copyright (c) Alpaca Core
# SPDX-License-Identifier: MIT
#
require 'yaml'

def clone_subproject(sp)
  dir = File.basename(sp)
  if File.directory?(dir)
    puts "Directory #{dir} already exists, skipping"
    return
  end

  puts "Cloning #{sp}"
  `git clone #{sp} --recurse-submodules`
end

subprojects = YAML.load_file('subprojects.yml').map { |sp|
  next sp if String === sp

  sp.map { |sup, prjs|
    prjs.map { "#{sup}/#{_1}" }
  }
}.flatten

subprojects.each { clone_subproject(_1) }
