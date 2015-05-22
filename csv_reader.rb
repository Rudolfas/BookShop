require 'csv'
require_relative 'book_in_stock.rb'

class CsvReader
    def initialize
    @books_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
    end
  end
  def to_s
   "Books In Stock:#{@books_in_stock}"
  end
end