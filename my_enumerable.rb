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
<<<<<<< HEAD
  
=======

>>>>>>> bd098dc885e9fbd5dbb001ba26e0f8c0c01349e0
    new_list
  end
end
