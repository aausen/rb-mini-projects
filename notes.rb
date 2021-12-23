#example of how to write a new Proc with a yield
def greeter
    yield
  end
  
phrase = Proc.new { puts "Hello there!" }
greeter(&phrase)
  

# symbol checker using a lambda function
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]


symbol_filter = lambda { |x| x.is_a? Symbol }
symbols = my_array.select(&symbol_filter)

puts symbols

# building a block review
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select{ |x| x.is_a? Integer }

puts ints

# creating a basic proc
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new { |num| num < 100 }

youngsters = ages.select(&under_100)

puts youngsters

# practice building a lambda funct 
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda { |rank, name| name < "M"}

a_to_m = crew.select(&first_half)

puts a_to_m

# class inheritance practice

class Message
  @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end

class Email < Message
  def initialize(from, to)
    super
  end
end

my_message = Message.new("me", "you")