#!/usr/bin/env ruby

require 'csv'

source_file = ARGV[0]

CSV.open(source_file, 'r') do |csv|
  csv.gets # header

  csv.each do |row|
    criteria_id, name, canonical_name, = row
    STDOUT.puts %|<option value="#{criteria_id}">#{canonical_name}</option>|
  end
end
