class Action
  def record(message)
    file = File.open('test.llama', 'w')
    file.print message
    file.close
  end

  def read
    file = File.open('test.llama', "r")
    file.readlines.each do |line|
      @message = line
    end
    file.close
    @message
  end
end
