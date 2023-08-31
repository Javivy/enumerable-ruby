module MyEnumerable
  def all?
    @list.each do |n|
      if !yield n
        return false
      end
    end
    
    return true
  end

  def any?
    @list.each do |n|
      if yield n 
        return true
      end
    end

    return false
  end
end