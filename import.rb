#!/usr/bin/env ruby
require 'roo'
require 'spreadsheet'

filename = ARGV[0] || raise("You must provide the file name as a parameter")

spreadsheet = Roo::Spreadsheet.open(filename)

spreadsheet.each_with_pagename do |name, sheet|
  puts "Sheet '#{name}' >> #{sheet.row(1)[0]} ## #{sheet.column(2)[1]}"
end

puts "It's longest sheet is #{spreadsheet.longest_sheet}"
