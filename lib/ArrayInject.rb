class Array

def my_inject(acc=0)
    self.each { |i| acc = yield(acc, i)}
    acc  
  end
end 






