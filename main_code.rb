require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

print(list.all? { |e| e < 5 })
print(list.all? { |e| e > 5 })
print(list.any? { |e| e == 2 })
print(list.any? { |e| e == 5 })
print(list.filter(&:even?))
