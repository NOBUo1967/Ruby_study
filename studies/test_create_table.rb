#!/usr/bin/env ruby

require "pg"

begin
  conn = PG.connect('localhost', 5432, '', '', 'testdb', 'SHIN', '')
  conn.exec(<<-SQL)
    CREATE TABLE IF NOT EXISTS test_table
    (id int, first_name text, famiry_name text)
    SQL
rescue => ex
  puts(ex.class, ex.message)
ensure
  conn.close if conn
end