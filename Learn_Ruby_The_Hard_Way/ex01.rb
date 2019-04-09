# 尝试实现Lua语言中的table机制

puts "mruby #{ RUBY_VERSION }"

# puts 'I "said" do not touch this.'
# puts "I'd much rather you 'not'."

class Table
    attr_reader :table
    attr_reader :metatable

    def initialize
        @table = {}
    end

    def setmetatable( metatable )
        @metatable = metatable
    end

    def getmetatable
        @metatable
    end

    def method_missing( methodsym, *args )

        methodname = methodsym.to_s

        if methodname.include?('=')
            @table[methodname.delete("=")] = args.first
            puts ( "Set Member #{methodname.delete("=")} = #{args.first}" )
            
        else
            puts ( "Get Member #{methodname} #{@table[methodname].class}" )
            @table[methodname]
        end

        # self.class.send( :define_method, methodname, lambda{ |*args| puts( args.inspect) } )
    end 
end

t = Table.new()
t.name = "chen910"
# F.age = 16
# F.other = "BBB"
# F.me = F
# F.child = Foo.new()
# F.parent = Foo.new()
# t.add = -> (a, b) { a + b }
t.add = -> a,b { a + b }


# puts F.name
# puts F.age
# puts F.other
# puts F.me
# puts F.child
# puts F.parent
# puts t.add.(1, 2)
puts t.name.inspect

require './Learn_Ruby_The_Hard_Way/ex15.rb'
# require 'main.rb'