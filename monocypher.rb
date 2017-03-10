W = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',
     'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 
     '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 
     '[', '-' , '+' , '.' , '^' , '@' , '_' , ':' , '*' ,',' ,']']

UW = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O',
      'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', 
      '5', '9', '6', '7','8', '1', '2', '3','0', '4', 
      '-' , '_' , ':' , ',', '[' ,']', '+' , '.' , '^', '*' , '@']

def en(value)
	c = []
  for i in (0..value.length - 1)
    for j in (0..W.length - 1)
        if value[i].chr.downcase == W[j]
            (c ||= []) << UW[j];  
            break
        end
    end
  end
  return c.join("")
end

def dc(value)
  pp = [];
  for i in 0..(value.length - 1)
    for j in 0..(UW.length - 1)
      if value[i] == UW[j]
        (pp ||= []) << W[j]
      end
    end
  end
  return pp.join("");
end

puts en("user1234@abc.com");
puts dc(en("user1234@abc.com"))