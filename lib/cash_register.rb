
class CashRegister
attr_accessor :total, :discount, :title, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if discount != 0
      self.total = total * 0.8
      "After the discrount, the total comes to #{self.total}"
    end
  end
end
