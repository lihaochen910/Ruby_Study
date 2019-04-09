# 使用Array.each方法去传入Block遍历数组

class MyClass

end

prices = [333.0, 2233.0, 999, MyClass.new]

prices.each do |elm|
    puts elm.class, elm
    # prices[prices.find_index(elm)] += 1
end

puts prices