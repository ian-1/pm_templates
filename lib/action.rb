class Action
  def record(user, message)
    file = File.open("#{user}_actions.llama", 'w')
    file.print message
    file.close
  end

  def read(user)
    file = File.open("#{user}_actions.llama", "r")
    file.readlines.each do |line|
      @message = line
    end
    file.close
    @message
  end
end
