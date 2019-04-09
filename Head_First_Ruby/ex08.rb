# Hash
# 散列默认值，散列默认块

class CelestialBody
  attr_accessor :type, :name
end

default_body = CelestialBody.new
default_body.type = 'planet'

# 散列默认值
bodies = Hash.new(default_body)

p bodies.default

# 直接访问不存在的键将会返回散列默认值，如果默认值是引用类型则会出现问题
bodies['Mars'].name = "Mars"

# 这样是我们所期望的
bodies['Mars'] = CelestialBody.new
bodies['Mars'].name = "Mars"


# 散列默认块
bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = 'planet'
  # body将作为块的返回值
  hash[key] = body
end

# 这样在访问不存在的键是会直接分配内存，但是要注意内存问题
p bodies['Mars']
p bodies['Europa']