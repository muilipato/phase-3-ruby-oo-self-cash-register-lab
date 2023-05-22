class CashRegister
   attr_accessor :discount, :total, :items, :recent_transaction
   def initialize (discount = 0 )
     @total = 0
     @discount = discount
     @items = []
   end

   def add_item(title, price, quantity = 1)
    self.recent_transaction = price * quantity
    self.total+= self.recent_transaction
    quantity.times do
      self.items << title
    end
   end

   def apply_discount
     if self.discount !=0
       disc = (self.discount.to_f/100.0) * self.total
       self.total -= disc.to_i
      return "After the discount, the total comes to $#{self.total}."
     end
     "There is no discount to apply."
   end

   def void_last_transaction
     self.total -= self.recent_transaction
   end
end
