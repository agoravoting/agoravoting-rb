require 'agoravoting/proposal'
describe Agoravoting::Proposal do
  it 'should setup all supported attributes' do
    attributes = {
      title: 'Law for renewable energies',
      description: '...'
    }
    proposal = Agoravoting::Proposal.new(attributes)
    proposal.title.should == 'Law for renewable energies'
    proposal.description.should == '...'
  end
end
