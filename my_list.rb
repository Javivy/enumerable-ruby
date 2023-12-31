require_relative 'my_enumerable'

class MyList
  def initialize(*list)
    @list = list.to_a
  end

  include MyEnumerable

  def each?
    yield @list
  end
end

list = MyList.new('ant', 'doggo', 'parrot')
puts(list.all? { |n| n.length == 3 }) # => should return false
puts(list.any? { |n| n.length == 6 }) # => should return true
puts print(list.filter { |n| n.length <= 5 }) # => should return ['ant', 'doggo']
