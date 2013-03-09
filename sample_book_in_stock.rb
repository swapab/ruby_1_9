class BookInStock
	attr_reader :isbn, :price
	attr_accessor :price
	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end

	def price_in_cents
		Integer(price*100 + 0.5)
	end

	def price_in_cents=(cents)
		@price = Integer(cents) / 100.0
	end

	def show_book
		puts "ISBN  : #{self.isbn}"
		puts "Price : #{self.price}"
	end
end

class Book
	# b1 = BookInStock.new("bin1", 3)
	# b2 = BookInStock.new("bin2", "7.32")
	book = BookInStock.new(ARGV[0], ARGV[1])
	puts "Price          : #{book.price}"
	puts "Price In Cents : #{book.price_in_cents} \n\n"
	book.price_in_cents = ARGV[2]
	puts "Price          : #{book.price}"
	puts "Price In Cents : #{book.price_in_cents} \n\n"
	# puts "#{b1.show_book}"
	# puts "#{b2.show_book}"
end