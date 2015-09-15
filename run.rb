class Diner

  def servers
    ['Amanda', 'Drew', 'Andrea','Clair', 'John', 'Godzilla', 'Drew', 'Peter Pan', 'Anna']
  end

  def array
    ['Anna']
  end

  def lengths
    servers.map{|s| s.length}
  end

  def found
    if servers.include? 'Anna' then 'found' else 'not found' end
  end

  def remove(arr)
    servers.delete_if{|a| arr.include? a}
  end

  def dupes
    if servers.uniq! then 'dupes' else 'no dupes' end
  end

  def join(arr1, arr2)
    arr1.concat arr2
  end

  def replace(arr)
    arr.map{|word| word.gsub('o', 'a')}
  end
end

d = Diner.new

p d.lengths

p d.found

p d.remove(d.array)

p d.dupes

# join two arrays
p d.join(['Hello', 'my', 'name'], ['is', 'Anna'])

# replace the letter 'o' with letter 'a' in every word in the array
p d.replace(['Hello', 'my', 'nome', 'is', 'onno'])
