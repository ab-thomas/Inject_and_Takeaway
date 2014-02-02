require 'Takeaway'

  describe Takeaway do

    let(:takeaway) {Takeaway.new}

    context 'Menu'
      it 'should have a list of dishes and prices' do
        expect(takeaway.menu).to eq(
          [{ dish: "Dim Sum", price: 4.99 },
    { dish: "Steamed Rice", price: 2.50 },
    { dish: "Blackbean and Ginger chicken", price: 5.95 },
    { dish: "Cantonese duck", price: 5.95 },
    { dish: "Lettuce Parcel", price: 4.50 }]
    )
      end

    context 'Calculate Order'
      it 'should raise an error if the sum of dishes not correct' do
        expect(takeaway.calc_order("Dim Sum", 2)).to raise_error
      end

      it 'should not raise an error if the sum of dishes is correct' do
        expect(takeaway.calc_order("Dim Sum", 4.99)).to_not raise_error
      end




  end