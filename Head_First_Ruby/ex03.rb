# Class
# 定义类方法(有的其他语言中叫静态方法)可以写作
#   def self.xxx 或者 def 类名.xxx 或者 def 类名::xxx
# 实例方法中默认带有self上下文，访问成员变量最好使用@xxx的方式，用以区别实例方法中的局部变量

puts format("%12s | %s", "Product", "Cost")
puts "-" * 40

class Employee

  attr_reader :name, :salary

  def Employee::factory_method
    puts "factory_method call"
  end

  def name=(name)
    raise "Name can't be blank!" if name == ''
    @name = name
  end

  def salary=(salary)
    raise "A salary of #{salary} isn't valid!" if salary < 0
    @salary = salary
  end

  def initialize(in_name = "Anonymous", in_salary = 0.0)
    self.name = in_name
    self.salary = in_salary
  end

  def print_pay_stub
    puts "name: #{name}"
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

  def print_name
    puts "Name: #{name}"
  end

end


emp = Employee.new("Admin", 99999)

emp.print_pay_stub

Employee::factory_method