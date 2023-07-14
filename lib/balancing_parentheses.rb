require_relative './stack'

def balancing_parentheses(str)
  stack = Stack.new

  str.chars.each do |char| 
    if char == ')' && stack.peek == '('
      stack.pop
    else
      stack.push(char) 
    end
  end

  stack.size
end