def execute(&my_block)
  my_block.call
end

execute { puts 'Hello from inside the execute method!'}