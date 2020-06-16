class Action
  def self.record(user, message)
    file = File.open("#{user}_actions.llama", 'a')
    file.puts message
    file.close
  end

  def self.read_last(user)
    file = File.open("#{user}_actions.llama", "r")
    file.readlines.each do |line|
      @message = line[0..-2]   # cuts ' \n' left by puts
    end
    file.close
    @message
  end

  def self.show_list(user)
    list = []
    file = File.open("#{user}_actions.llama", "r")
    file.readlines.each do |line|
      list.push(line[0..-2])
    end
    file.close
    list
  end
end
