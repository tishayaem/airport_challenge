require 'airport'

 describe Airport do
   subject(:airport) { described_class.new }
   let(:plane) { double :plane }

 describe 'landing' do

    it { is_expected.to respond_to(:landing).with(1).argument }

   it 'confirms that plane has landed' do
     allow(plane).to receive(:landing)
      subject.landing(plane)
      expect(subject.landed_planes).to include plane
       end
end
    describe 'taking off' do

    it 'gives instructions to takeoff' do
      expect(airport).to respond_to(:taking_off).with(1).argument
    end

    it 'confirm that plane is no longer in the airport' do
      allow(plane).to receive(:landing)
      allow(plane).to receive(:taking_off)
      expect(airport.landed_planes).not_to include plane
    end

      end

        end
