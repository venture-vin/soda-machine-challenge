require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash
  @@total_sodas = 0

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @@total_sodas = @sodas.length
  end

  def find_soda(soda_brand)
    if @sodas.include?(soda_brand)
      return @sodas.find do |brand|
        if brand == soda_brand
          return @brand
        end
      end
    else
      return nil
    end
  end

  def sell(soda_brand)
    if @sodas.include?(soda_brand) == false
      return nil
    else
      @sodas.each do |soda_brand|
        @cash += @price
      end
    end
  end

end


p pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
p mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
p soda_machine = SodaMachine.new(sodas: [pepsi, mountain_dew], cash: 1.00)

