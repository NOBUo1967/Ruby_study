#!/usr/bin/env ruby

require "pg"
require "csv"

CSV_COLUMN = {id: 0, first_name: 1, family_name: 2}

CSV.open("TEST.CSV", "r:Shift_JIS:UTF-8") do |csv|
  csv.each do |record|
    puts record
    data = Hash.new
    puts data
    CSV_COLUMN.each {|key, index| data[key] = record[index]}
    puts data
    begin 
      conn = PG.connect('localhost', 5432, '', '', 'testdb', 'SHIN', '')
      conn.exec(<<~SQL, data)
      INSERT INTO test_table VALUES
      (:id, :first_name, :family_name)
      SQL
    rescue => ex
      puts(ex.class, ex.message)
    ensure
      conn.close if conn
    end
  end
end