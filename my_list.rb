require_relative "my_enumerable.rb"

class MyList
  def initialize(*list)
    @list = list.to_a
  end

  include MyEnumerable

  def each?
    @list
  end
end

list = MyList.new('ant', 'dog', 'parrot')
puts(list.all? {|n| n.length == 3})