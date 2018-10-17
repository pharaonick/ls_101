# DO FURTHER EXPLORATION!!!!



=begin
stack is a list of values
- can grow or shrink as you remove values to use or add values to the stack
- can rep using an array

register is like a memo
- represents current value
- not part of stack
- we store the results of operations here

e.g.
stack: [3, 6, 4]
register: 7
MULT operation pops off topmost value of stack, multiplies it by register, 
and stores that result in register
so 
stack: [3, 6]
register: 28

Write a method that implements a mini stack and register based lang.
Programs provided by string of commands
- all operations are integer operations
- assume all programs are correct programs
- initialize register to 0
- commands:
n - place value n in register. stack not modified
PUSH - push register value to stack. value remains in register
ADD - pops value from stack, adds to register value, saves to reg
SUB - pops value from stack, subtracts from register value, saves to reg
MULT - pops value from stack, multiplies it by register value, saves to reg
DIV - pops value from stack, divides into register value, saves to reg
MOD - pops value from stack, divides it into register value, but stores integer remainder
POP - removes topmost value from stack and places in register
PRINT - print the register value

=end

# def print(reg)
#   puts reg
# end

# def push()

# end

# def mult()
  
# end

def minilang(commands)
  register = 0
  stack = []

  commands.split.each do |command|
    # if command == command.to_i.to_s
    #   register = command.to_i
    # end

    case command
    when 'PRINT' then puts register
    when 'PUSH'  then stack << register
    when 'POP'   then register = stack.pop
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register = register.remainder(stack.pop)
    else              register = command.to_i
    end
  end
end


minilang('PRINT')
# # # 0

minilang('5 PUSH 3 MULT PRINT')
# # # 15
# # register = 5
# # stack [5]
# # register = 3


minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # # 5
# # # 3
# # # 8

minilang('5 PUSH POP PRINT')
# # # 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

minilang('-3 PUSH 5 SUB PRINT')
# # 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)






