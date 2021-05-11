require "pg"
require "csv"

class JZipCode
  CSV_COLUMN = {code: 2, pref:6, city: 7, addr: 8}
  
  def initialize(dbfile)
    @dbfile = dbfile
  end
  
  def create(zipfile)
    return if File.exist?(@dbfile)
    begin 
      conn = PG.connect('localhost', 5432, '', '', 'testdb', 'SHIN', '')
      conn.exec(<<~SQL)
      CREATE TABLE IF NOT EXISTS zip_codes
      (code text, pref text, addr text, alladdr text)
      SQL
    rescue => ex
      puts(ex.class, ex.message)
    ensure
      conn.close if conn
    end

    CSV.open(zipfile, "r:Shift_JIS:UTF-8") do |csv|
      csv.each do |record|
        data = Hash.new
        CSV_COLUMN.each {|key, index| data[key] = record[index]}
        data[:alladdr] = data[:pref] + data[:city] + data[:addr]
        begin 
          conn = PG.connect('localhost', 5432, '', '', 'testdb', 'SHIN', '')
          conn.exec(<<~SQL, data)
          INSERT INTO zip_codes VALUES
          (:code, :pref, :addr, :alladdr)
          SQL
        rescue => ex
          puts(ex.class, ex.message)
        ensure
          conn.close if conn
        end
      end
    end
    return true
  end
end