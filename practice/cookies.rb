
class Factory

  attr_reader :number_of_batches, :item

  def initialize(number_of_batches)
    @number_of_batches = number_of_batches
    @conveyor_belt = []
  end

  def move_items(item, amount)
    amount.times do
      @conveyor_belt << item
    end
  end

  def ship_batch
    p batch
    puts "Batch is shipped!"
  end

end


class Cookies
  attr_reader :type
  attr_accessor :cooked

  def initialize(type, cooked = false)
    @type = type
    @cooked = cooked
  end

  def to_s
    @type.to_s
  end

  def change_status
    cooked = true
  end

end


class Oven

  def self.bake_cookies(batch)
    puts "Baking cookies"
    sleep(0.5)
    puts "Ding! Cookies done!"
    batch.cooked = true
  end

  def self.check_cookies(batch)
    batch.cooked = true
  end

end


christines_batch = Cookies.new("chocolate chip")
cookie_factory = Factory.new(10)
cookie_factory.move_items(christines_batch, 10)
Oven.bake_cookies(christines_batch)
p cookie_factory
# cookie_factory.batch_the_cookies


class Cookie
  def initialize
    @done = false
  end

  def status_changed
    @done = true
  end

end

class Oven
  def make_cookies
    Cookie.new(self).status_changed
  end
end

OR

# module CookieMakingSupport

#   def status_changed(cookie)
#     @cookie.done
#   end

# end

#class Person, a person HAS a car
#   def initialize
#     @car = Car.new
#   end
# end

# class Car
#   def accelerate
#     # implementation
#   end
# end

#@wheels = (self.class::WHEELS ? self.class::WHEELS : args[:wheels])




