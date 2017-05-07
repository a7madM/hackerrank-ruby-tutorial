# problem on hackerrank : https://www.hackerrank.com/challenges/ruby-enumerable-any-all-none-find

hash = {"a" => 1, "b" => 2, "c" => 3,"d"=>12, "4"=>5 , "as"=>"aas"} 

def func_any(hash)
    # Check and return true if any key object within the hash is of the type Integer
    # If not found, return false.
    return hash.any? {|key, value| key.is_a? Integer}
end

def func_all(hash)
    # Check and return true if all the values within the hash are Integers and are < 10
    # If not all values satisfy this, return false.
    return hash.all? {|key, value| value.is_a? Integer and value < 10}
end

def func_none(hash)
    # Check and return true if none of the values within the hash are nil
    # If any value contains nil, return false.
    return hash.none? {|key, value| value.nil?}
end

def func_find(hash)
    # Check and return the first object that satisfies either of the following properties:
    #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20 
    #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
    
    return hash.find{|key, value| (key.is_a? Integer and value.is_a? Integer and value < 20) or (value.is_a? String and key.is_a? String and value[0,1] == 'a')} 
    
end

print func_any hash
puts