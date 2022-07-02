=begin
Write a method that implements a miniature stack-and-register-based programming language that
has the following commands:
    n          -Place a value n in the "register". Do not modify the stack.
    PUSH  -Push the register value on to the stack. Leave the value in the register.
    ADD    -Pops a value from the stack and adds it to the register value, storing the result in the 
                  register.
    SUB     -Pops a value from the stack and subtracts it from the register value, storing the result in
                  the register.
    MULT  -Pops a value from the stack and multiplies it by the register value, storing the result in
                  the register.
    DIV      -Pops a value from the stack and divides it into the register value, storing the integer
                  result in the register.
    MOD    -Pops a value from the stack and divides it into the register value, storing the integer
                   remainder of the division in the register.
    POP      -Remove the topmost item from the stack and place in register
    PRINT   -Print the register value
register starts == 0

EXAMPLES
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

DATA STRUCTURES
input - a string
ouput - integer/s or a no print message(string)

- array
- integer
- string
- conditional

ALGORITHM
- define a method (minilang) that takes a string (input) as an argument
  -set a variable (register) equal to 0
  -create an empty array called (stack)
  - split up the string(input) by words( words are characters seperated by spaces), put them into an array
    and call it commands ( you an use the #split method)
  
    -iterate throught the (commands) array
      if it's a number then 
        - register = number
      elsif word == PUSH
        stack << register
      elsif word == ADD
        register = stack.pop
      elsif word == SUB
        register = register - stack.pop
      elsif word ==MULT
        register = register * stack.pop
      elsif word == DIV
        register = register / stack.pop
      elsif word == MOD
        register = register % stack.pop
      elsif word == POP
        regiter = stack.pop
      elsif word == PRINT
        puts register
=end
def minilang(commands)
  register = 0
  stack = []

  commands.split.each do |word|
    case word
    when 'PUSH'  then stack << register
    when 'ADD'   then register += stack.pop.to_i
    when 'SUB'    then register -= stack.pop.to_i
    when 'MULT' then register *= stack.pop.to_i
    when 'DIV'     then register /= stack.pop.to_i
    when 'MOD'   then register = register % stack.pop.to_i
    when 'POP'     then register = stack.pop.to_i
    when 'PRINT' then puts register
    else                         register = word.to_i
    end
  end
end

# minilang('PRINT')
# 0

# minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

# minilang('5 PUSH POP PRINT')
# 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

# minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

=begin
FURTHER EXPLORATION
(3 + (4 * 5) - 7) / (5 % 3)
reg = 3
reg + ( reg = 4
            reg *= [5]
            reg(20))
reg(23)
reg - [7]
reg / (reg = 5
          reg %= 3
          reg(2))
reg
minilang("3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT SUB PUSH 3 ADD DIV PRINT")