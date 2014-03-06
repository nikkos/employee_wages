require_relative 'worker'
class Dashboard
  attr_accessor :title, :workers
  
  def initialize(title)
    @title = title  
    @workers= []
  end
  
  def add_worker(a_worker)
    @workers.push(a_worker)
  end
  
  def print_stats
    @workers.each do |w|
      puts w.to_s
    end
  
    puts "Total Wages:"
    puts @workers.reduce(0) { |sum, w| sum + w.pay }
     
    puts "Total Normal Hours:"
    puts @workers.reduce(0) { |sum, w| sum + w.normal_hours}
    
    puts "Total Overtime Hours"
    puts @workers.reduce(0) { |sum, w| sum + w.overtime_hours}
  end
  
end


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


demo1 = Dashboard.new("Demo1")
demo1.add_worker(worker1)
demo1.add_worker(worker2)
demo1.add_worker(worker4)
demo1.add_worker(worker5)
demo1.add_worker(worker6)
demo1.print_stats
