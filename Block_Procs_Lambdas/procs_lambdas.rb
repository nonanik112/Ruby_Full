procs = [
  # standard procs
  Proc.new { |x,y| p x + y},
  proc {p "Gelen harf"},
  # lambda (special type of proc)
  lambda {|x| p x**2},
  ->(name) {p "hello " + name}
]

p procs.map(&:lambda?)
p procs.map {|x| x.lambda?}


def call_proc
  @proc_1 = lambda {|phrase| return p phrase}
  p @proc_1.call("selam dünyalı")
  p "did I get run?"
end

p call_proc
