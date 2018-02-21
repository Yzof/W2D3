class Array
  def my_uniq
    uniq_hash = Hash.new(0)

    each { |el| uniq_hash[el] += 1}

    uniq_hash.keys
  end
end
