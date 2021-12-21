#example of how to write a new Proc with a yield
def greeter
    yield
  end
  
  phrase = Proc.new { puts "Hello there!" }
  greeter(&phrase)
  