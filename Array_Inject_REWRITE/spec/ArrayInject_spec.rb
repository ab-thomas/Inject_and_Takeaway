require 'ArrayInject'

  describe Array do

    let(:array) { [1,2,3,4] }

    it 'adds up to ten' do
      result = array.my_inject{|acc, num| acc + num}
      expect(result).to eq 10
    end
  end



 