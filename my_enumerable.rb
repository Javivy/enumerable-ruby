module MyEnumerable
  def all?
    @list.each do |n|
      return false unless yield n
    end

    return true
  end

  def any?
    @list.each do |n|
      if yield n
        return true
      end
    end

    false
  end
end

def filter
  new_list = []
  @list.each do |n|
    if yield n
      new_list.push(n)
    end
  end

  return new_list
end
