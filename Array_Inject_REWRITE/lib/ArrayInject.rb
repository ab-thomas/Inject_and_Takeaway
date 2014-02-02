class Array

def my_inject(acc=0)
    self.each { |i| acc = yield(acc, i)}
    acc  
  end
end 

# or

  def my_inject(accumulator=0)
    self.each do |item|
      accumulator = yield accumulator, item
    end
    accumulator 
  end
end



