require 'agoravoting'
describe Agoravoting::Agora do  

  describe "all" do
    it 'should return all agoras' do
      agoras = Agoravoting::Agora.all
      agoras.count.should == 1
    
      agora = agoras.first
      agora.name.should == "test"
      agora.description.should == "Test"
      agora.agoravoting_id.should == 1
    end
  end
  
end