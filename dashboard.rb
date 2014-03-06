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

if __FILE__ == $0
puts "Hello User :: Welcome to the Employee's Wages Application "
puts "What is the your Company name"
company_name = gets.to_s
company_name = Dashboard.new(company_name)
puts "You can enter only 10 employees in the system."
puts "How many employees, you want to add in the system ? (1 - 10)"
employee_number = gets.to_i
employee_number.times do |n|
  puts "Enter Employee's #{n} Name:"
  employee_name = gets.to_s
  puts "Enter Employee's #{n} Hours:"
  employee_hours = gets.to_i
  puts "Enter Employee's #{n}Rate:"
  employee_rate = gets.to_i
  employee_name = Worker.new(employee_name, employee_hours, employee_rate)
  employee_name.countrate
  employee_name.wages
  company_name.add_worker(employee_name)
end

puts "The stats of all Employees are:"
puts company_name.print_stats
end