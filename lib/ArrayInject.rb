class Array

# def my_inject(acc=0)
#     self.each { |i| acc = yield(acc, i)}
#     acc  
#   end
# end 

def my_inject(accumulator)
  self.each do |item|
    accumulator = yield accumulator, item
  end
  accumulator 
end
end



