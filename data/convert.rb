#!/usr/bin/env ruby

source_file = ARGV[0]

File.open(source_file, 'r') do |f|
  f.gets # header

  while line = f.gets
    criteria_id, name, canonical_name, = line.split(',')
  end
end
