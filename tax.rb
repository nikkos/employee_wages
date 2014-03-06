require_relative 'worker.rb'

describe Worker do
  before do
    @worker = Worker.new("nikkos", 20, 3 )
  end
  
  it "has a name" do
    @worker.name.should == "nikkos"
  end
  
  it "has a pay (hours * rate)" do
    @worker.countrate
    @worker.wages
    @worker.pay.should == 60
  end
  
  context "Create a user with overtime hours" do
    before do
      @worker = Worker.new("Petros",40,2)
    end
    
    it "has overtime hours" do
      @worker.countrate
      @worker.wages
      @worker.pay.should == 85
    end
  end
  
  context "Calculate the total overtime, normal hours and the total wages" do
    before do
      @worker = Worker.new("Giannis", 50, 2)
      @worker = Worker.new("George",  10, 2)
      @worker = Worker.new("Petros",  40, 1)
    end
    
    it "has overtime hours" do
      
end