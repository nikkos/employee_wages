require_relative 'worker.rb'
require_relative 'dashboard.rb'

describe Worker do
  
  it "Calculates Worker's  total Overtime Hours" do
    dashboard = Dashboard.new("Demo")
    
    worker1 = Worker.new("John", 40, 2)
    worker2 = Worker.new("George", 50, 2)
    worker3 = Worker.new("Jim", 35, 2)
    
    dashboard.add_worker(worker1)
    dashboard.add_worker(worker2)
    dashboard.add_worker(worker3)
    
    worker1.countrate
    worker1.wages

    worker2.countrate
    worker2.wages

    worker3.countrate
    worker3.wages
    
    dashboard.overtime_hours.should == 20
  end
   
end