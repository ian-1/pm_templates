require 'template'

describe Template do
  it "check responds to see_templates" do
    expect(subject).to respond_to :see_templates
  end

  it "check see_templates returns templates list" do
    expect(subject.see_templates).to eq('1) Test template')
  end

  it "check responds to select" do
    expect(subject).to respond_to :select
  end

  it "check see_templates returns template contents" do
    expect(subject.select).to eq('Test template contents')
  end
end
