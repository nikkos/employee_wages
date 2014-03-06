class Worker
  
  attr_accessor :name, :hours, :payrate, :pay, :overtime, :regular
  
  
  def initialize(name, hours, payrate=0.0)
    @name = name
    @hours = hours
    @payrate = payrate
    @pay = 0 
  end
  
  def countrate
    if @hours <= 35
      @regular = @hours * @payrate
      @overtime = 0.0
    elsif
      @hours >= 50
      @regular = 35 * @payrate
      @overtime = (50 - 35) * @payrate * 1.5 
    else
      self.overtime_calc
    end
  end
  
  def overtime_calc
    @regular = 35 * @payrate
    @overtime = (@hours - 35) * @payrate * 1.5 
  end
  
  def wages
    @pay = @regular + @overtime
    if @pay  <= 20
      @pay = 20
    else
      puts "hello"
    end
  end
  
  def overtime_hours
    if @hours >= 35
       @hours = @hours - 35
    else
      @hours = 0
    end
  end
  
  def normal_hours
    if @hours >= 35
      @hours = 35
    else
      @hours = @hours
    end
  end
  
  def to_s
    "#{@name} work #{@hours} and his rate is #{@payrate} should be paid: #{@pay} "
  end
end

if __FILE__ == $0
worker1 = Worker.new("nikkos", 10, 5.5 )
worker2 = Worker.new("Giannis", 40, 10)
worker3 = Worker.new("Kostas", 40, 8)
worker4 = Worker.new("Ntinos", 25, 10)
worker5 = Worker.new("Fanis", 60, 10)
worker6 = Worker.new("Manos", 0, 10)

worker1.countrate
worker1.wages

worker2.countrate
worker2.wages

worker3.countrate
worker3.wages

worker4.countrate
worker4.wages

worker5.countrate
worker5.wages

worker6.countrate
worker6.wages


puts worker1
puts worker2
puts worker3
puts worker4
puts worker5
puts worker6
end