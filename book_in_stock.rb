class BookInStock
  attr_reader(:isbn)  
  attr_accessor(:discount)
  
 def initialize(isbn, price)
  @isbn=isbn
  @price=Float(price)
  @discount=1.00 #nuolaida procentais
 end
  
  def shelf_price
    @price * @discount  #Pardavimo kaina sudaro nekeiciama kaina dauginta is nuolaidos, kuria ivesiu kaip boo_shelf
  end
  
  def shelf_price=(price)
    @discount=price/@price
  end
  
 def to_s
   "ISBN:#{@isbn}, price:#{shelf_price}€, discount:#{(@discount * 100)-100}%"
 end
end