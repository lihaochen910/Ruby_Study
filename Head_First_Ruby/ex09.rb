# Mixin
# 使用Mixin去实现多重继承
# include是一个Kernel内部的方法

class Clip

  def play
    puts "Playing #{object_id} ..."
  end

end

module AcceptsComments

  def comments
    # 多种写法
    # @comments = [] if @comments == nil
    # @comments = [] if !@comments
    # @comments = @comments || []
    @comments ||= []
  end

  def add_comment(comment)
    comments << comment
  end

end

class Video < Clip
  include AcceptsComments
  attr_accessor :resolution
end

class Song < Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end


video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending.")

song = Song.new
song.add_comment("Awesome beat.")

p video.comments, song.comments

p Video.ancestors
