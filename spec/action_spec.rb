require 'action'

describe Action do
  before do
    @user = 'test_llama'
    @message1 = 'no drama llama'
    @message2 = 'no probllama'
    @message3 = 'Stay calmer with a llama'
  end

  it "check responds to record" do
    expect(subject).to respond_to :record
  end

  it "check responds to read_last" do
    expect(subject).to respond_to :read_last
  end

  it "check responds to show_list" do
    expect(subject).to respond_to :show_list
  end

  it "check read_last returns last recorded action for user" do
    subject.record(@user, @message1)
    expect(subject.read_last(@user)).to eq(@message1)
  end

  it "check read_last returns contents of 'user'_actions.llama" do
    @file_name = "#{@user}_actions.llama"
    @instruction = "echo #{@message2} > #{@file_name}"
    system(@instruction)
    expect(subject.read_last(@user)).to eq("#{@message2} ")
  end

  it "check show_list returns all recorded actions for user" do
    file = File.open("#{@user}_actions.llama", 'w')
    file.print ''
    file.close
    subject.record(@user, @message1)
    subject.record(@user, @message2)
    subject.record(@user, @message3)
    expected_array = []
    expected_array.push(@message1)
    expected_array.push(@message2)
    expected_array.push(@message3)
    expect(subject.show_list(@user)).to eq(expected_array)
  end
end
