require_relative './stack'

# your code here

def balancing_parentheses (string)
    stack = Stack.new
    string.chars.each do |char|
        unless char == ')' && stack.peek == '('
            stack.push char
        else stack.pop
        end
    end

    stack.size
end
