require 'template'

describe Template do
  it "check responds to see_templates" do
    expect(subject).to respond_to :see_templates
  end

  it "check see_templates returns templates list" do
    expect(subject.see_templates).to eq('1) Return holding deposit - offer not formally accepted')
  end

  it "check responds to select" do
    expect(subject).to respond_to :select
  end

  it "check see_templates returns template contents" do
    expect(subject.select).to eq('The landlord has not formally accepted your offer. As such we will return your holding deposit to you.

It is disappointing as the landlord did previously state that they would go with your offer.

I am very sorry about this. It is very frustrating as you have paid your deposit ready for the landlord to formally accept. Unfortunately without formal acceptance there is little we can do but return your money.

Please can you pass me your bank details (name of account holder, account number and sort code) and I will ensure that your holding deposit is transferred back to you.

I wish you every luck in your property search and will certainly let you know if any other similar properties become available so that you can be the first to view.')
  end
end
