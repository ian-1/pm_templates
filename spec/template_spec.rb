require 'template'

describe Template do
  it "Check responds to see_templates" do
    expect(subject).to respond_to :see_templates
  end

  it "" do
    expect(subject.see_templates).to eq('Offer has not been formally accepted')
  end
end
