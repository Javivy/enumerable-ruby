module MyEnumerable
  def all?
    @list.each do |n|
      return false unless yield n
    end

    true
  end

  def any?
    @list.each do |n|
      return true if yield n
    end

    false
  end
  def filter
    new_list = []
    @list.each do |n|
      new_list.push(n) if yield n
    end
  
    new_list
  end
end


