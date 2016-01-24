require 'airport'

 describe Airport do

 describe 'landing' do

    it { is_expected.to respond_to(:landing).with(1).argument }

   it 'confirms that plane has landed' do
    plane = double (:plane)
     expect(subject.landing(plane)).to include plane
    end
  end

  end
