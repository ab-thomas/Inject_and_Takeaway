require 'Takeaway'

  describe Takeaway do

    context 'Menu'
      it 'should have a list of dishes and prices' do
        takeaway = Takeaway.new
        expect(takeaway.menu).to include?({ dish: "Dim Sum", price: 4.99 })
      end

    context 'Calculate Order'
      it 'should raise an error if the sum of dishes not correct' do
        takeaway = Takeaway.new
        expect(takeaway.calc_order("Dim Sum", 1, 2)).to raise_error
      end

      it 'should not raise an error if the sum of dishes is correct' do
        takeaway = Takeaway.new
        expect(takeaway.calc_order("Dim Sum", 1, 4.99)).to_not raise_error
      end




  end