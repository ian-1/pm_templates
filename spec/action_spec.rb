require 'action'

describe Action do
  before do
    @user = 'test_llama'
    @message1 = 'no drama llama'
    @message2 = 'no probllama'
  end

  it "check responds to record" do
    expect(subject).to respond_to :record
  end

  it "check responds to read_last" do
    expect(subject).to respond_to :read_last
  end

  it "check read_last returns last recorded action for user 'test'" do
    subject.record(@user, @message1)
    expect(subject.read_last(@user)).to eq(@message1)
  end

  it "check read_last returns contents of 'user'_actions.llama" do
    @file_name = "#{@user}_actions.llama"
    @instruction = "echo #{@message2} > #{@file_name}"
    system(@instruction)
    expect(subject.read_last(@user)).to eq("#{@message2} \n")
  end
end
