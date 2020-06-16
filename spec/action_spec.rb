require 'action'

describe Action do
  it "check responds to record" do
    expect(subject).to respond_to :record
  end

  it "check responds to read" do
    expect(subject).to respond_to :read
  end

  it "check read returns last recorded action" do
    subject.record('test action')
    expect(subject.read).to eq('test action')
  end

  it "check read returns contents of test.llama" do
    system("echo 'test llama' > test.llama")
    expect(subject.read).to eq("'test llama' \n")
  end
end
