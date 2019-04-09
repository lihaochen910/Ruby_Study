# Block
# 注意传入Block类型参数需要在参数前面加&
# 调用Block可以使用.call或者yield
# Block可以有返回值，也接受传入参数

def my_method(&my_block)
  puts "We're in the method, about to invoke your block!"
  my_block.(1, 2)
  my_block[]
  my_block.call
  yield "yield ARG1", "yield ARG2"
  puts "We're back in the method"
end

my_method do |arg1, arg2|
  puts "-" * 6 + "The Block" + "-" * 6 + "#{arg1} #{arg2}"
end


my_method { |arg1, arg2|
  puts "-" * 6 + "The {} Block" + "-" * 6 + "#{arg1} #{arg2}"
}