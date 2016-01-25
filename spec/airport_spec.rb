require 'airport'

 describe Airport do
   subject(:airport) { described_class.new}
   let(:plane) { double :plane }
   let(:weather) { double :weather, stormy?: false }

 describe 'landing' do

before do
  allow(weather).to receive(:stormy?).and_return(false)

end
    it { is_expected.to respond_to(:landing).with(1).argument }

   it 'confirms that plane has landed' do


     subject.landing(plane)
     expect(subject.landed_planes).to include plane
       end

end

describe 'landing when weather is stormy' do
  before do
  allow(weather).to receive(:stormy?).and_return(true)

  end



  it 'raises error to prevent landing on stormy weather' do
airport = Airport.new(weather)

    expect { airport.landing(plane) }.to raise_error('No landing permission due to stormy weather!')
       end

end

    describe 'taking off' do
before do
  allow(weather).to receive(:stormy?).and_return(false)


end
    it 'gives instructions to takeoff' do
      expect(airport).to respond_to(:taking_off).with(1).argument
    end

    it 'confirms that plane is no longer in the airport' do
      allow(plane).to receive(:landing)
      allow(plane).to receive(:taking_off)
      expect(airport.landed_planes).not_to include plane
    end
    end

  describe 'taking off when its stormy' do
  before do
  allow(weather).to receive(:stormy?).and_return(true)
end
  it 'raises error to prevent taking off on stormy weather' do
airport = Airport.new(weather)



   message = 'No permission to take off due to stormy weather'
      expect { airport.taking_off(plane) }.to raise_error(message)
         end

end
  end
