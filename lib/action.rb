class Action
  def record(message)
    @message = message
  end

  def read
    @message
  end
end
