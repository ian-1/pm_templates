require 'action'

describe Action do
  before do
    @user = 'test_llama'
    @message = 'no drama llama'
  end

  it "check responds to record" do
    expect(subject).to respond_to :record
  end

  it "check responds to read" do
    expect(subject).to respond_to :read
  end

  it "check read returns last recorded action for user 'test'" do
    subject.record(@user, @message)
    expect(subject.read(@user)).to eq(@message)
  end

  it "check read returns contents of test.llama" do
    @instruction = "echo #{@message} > test.llama"
    system(@instruction)
    expect(subject.read(@user)).to eq(@message)
  end
end
