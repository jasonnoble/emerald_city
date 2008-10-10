class Cart
  attr_reader :items
  
  def initialize
    @items = []
  end
  
  def add_product(product)
    current_item = @items.find {|item| item.product == product}
    if current_item
      current_item.increment_quantity
    else
      @items << CartItem.new(product)
    end
  end
  
  def total_price
    @items.sum {|item| item.price}
  end
end