require 'agoravoting'
describe Agoravoting::Agora do  

  describe "all" do
    it 'should return all agoras' do
      agoras = Agoravoting::Agora.all
      agoras.count.should == 1
    
      agora = agoras.first
      agora.name.should == "test"
      agora.description.should =~ /Test/
      agora.agoravoting_id.should == 1
    end
  end

  describe "authenticated user" do
    it 'should create an agora' do
      count = Agoravoting::Agora.all.count
      # TODO: Authenticate
      Agoravoting::Agora.create(pretty_name: "Congress", short_description: "Chamber of representatives")
      count2 = Agoravoting::Agora.all.count
      count2.should == count1 + 1
    end
  end
  
end
