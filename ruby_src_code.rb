# Part 1
def two_sum?(a, n)
  visited = Hash.new
  index = 0

  for val in a
    if visited.has_key?(n-val)
      return true
    elsif !visited.has_key?(val)
      visited[val] = index
    end

    index+=1
  end
  return false
end

def max_sub_array(l)
  currSum = l[0]
  maxsum = l[0]

  for num in l[1,l.length] 
      currSum = [currSum + num, num].max()
      maxsum = [currSum, maxsum].max()
  end

  return maxsum
end

def group_anagrams(a)
  ans = Array.new {Array.new}
  exists = Hash.new
  index = 0;

  for val in a
    sortedVal = val.split("").sort.join("")
    if exists.has_key? sortedVal
      ans[exists[sortedVal]].push val
    else
      ans[index] = [val]
      exists[sortedVal] = index
      index+=1
    end
  end

  return ans
end

# Part 2
def brackets_match?(s)
  temp = s
  previous = " "
  while temp.empty? == false
    temp = temp.gsub(/\(\)|\[\]|\{\}/,"")
    if temp == previous
      return false
      break
    else
      previous = temp
    end
  end
  if temp.empty?
    return true
  end
end

def remove_and_append_vowels(s)
  sWithoutVowels = s.gsub(/[aeiouAEIOU]/,'')
  sWithVowels = s.gsub(/[^aeiouAEIOU]/,'')
  return sWithoutVowels.concat(sWithVowels)
end

def highest_frequency_word(s)
  s = s.gsub(/\d+/, " ")
  s = s.gsub(/\w+/) { |word| word.downcase }
  s = s.gsub(/[^a-z]/, ' ')
  s = s.split
  count = 0
  pos = s[0]
  
  for i in s do
    freq = s.count(i)
    if freq > count 
      count = freq
      pos = i
    end
  end
  return pos
end

# Part 3
class Book
  attr_accessor :title 
  attr_accessor :price

  def initialize(title, price)
    if title == nil || title.length == 0
      raise ArgumentError.new "Title cannot be nil or of length 0"
    end

    if price == nil || price <= 0
      raise ArgumentError.new "Price cannot be nil or less than or equal to 0"
    end

    @title = title
    @price = price
  end

  def formatted_price
    dollars = price.floor()
    cents = ((price - price.floor())*100).round()
    dollarString = dollars > 0 ? dollars.to_s + (dollars > 1 ? " dollars" :" dollar") : ""
    centsString = cents > 0 ? cents.to_s + (cents > 1 ? " cents" :" cent") : ""

    return dollarString + (dollars > 0 && cents > 0 ? " and " : "") + centsString
  end
end