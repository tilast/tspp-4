class ConsoleApplication

private
  def initialize(istream, ostream)
    @istream = istream
    @ostream = ostream

    read_command
  end

  def read_command
    @ostream.write ">> "

    while line = @istream.gets
      break if !route(line.chomp)
    end
  end

  def route(command)

    words  = command.split(" ")
    params = {}

    words.each_with_index do |word, i|
      params[words[i].sub("-", "")] = words[i + 1] if word.start_with?("-")
    end

  end

end