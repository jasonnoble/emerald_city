class Cart
  attr_reader :items
  
  def initialize
    @items = []
  end
  
  def add_product(product)
    @items << product
  end
end