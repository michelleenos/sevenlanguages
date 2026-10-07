module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = "texts/" + self.class.to_s.downcase + ".txt"
      file = File.new(filename)
      @headers = file.gets.chomp.split(", ")

      file.each do |row|
        @csv_contents << row.chomp.split(", ")
      end
    end

    def each(&block)
      csv_contents.each do |row|
        block.call CsvRow.new(headers, row)
      end
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end
  end
end

class Csv
  include ActsAsCsv
  acts_as_csv
end

class CsvRow
  attr_accessor :headers, :items

  def initialize(headers, items)
    @headers = headers
    @items = items
  end

  def method_missing(name, *args)
    # this is not very efficient lol
    ind = headers.index(name.to_s)
    if not ind
      # error - this would mean the method is actually missing...
      return
    end
    return items[ind]
  end
end

m = Csv.new
m.each { |row|
  puts row.animal
}
