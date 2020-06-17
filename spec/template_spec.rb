require 'template'

describe Template do
  it "check responds to see_templates" do
    expect(described_class).to respond_to :see_templates
  end

  it "check see_templates returns templates list" do
    expect(described_class.see_templates).to eq('1) Return holding deposit - offer not formally accepted')
  end

  it "check responds to open_template" do
    expect(described_class).to respond_to :open_template
  end

  it "check select returns template contents" do
    text = ['The landlord has not formally accepted your offer. As such we will return your holding deposit to you.',
            '',
            'It is disappointing as the landlord did previously state that they would go with your offer.',
            '',
            'I am very sorry about this. It is very frustrating as you have paid your deposit ready for the landlord to formally accept. Unfortunately without formal acceptance there is little we can do but return your money.',
            '',
            'Please can you pass me your bank details (name of account holder, account number and sort code) and I will ensure that your holding deposit is transferred back to you.',
            '',
            'I wish you every luck in your property search and will certainly let you know if any other similar properties become available so that you can be the first to view.']
    expect(described_class.open_template('ap')).to eq(text)
  end

  it "check responds to read_tree" do
    expect(described_class).to respond_to :read_tree
  end

  it "check select returns expected questions and answers" do
    path = ''
    question = ["Who is the intended recipient of this message?",
               ["Applicant", ["applicant", ["a", "ap", "app"]]],
               ["Tenant", ["tenant", ["t", "tt", "ten"]]],
               ["Contractor", ["contractor", ["c", "con", "ct", "cr", "cont", "contr"]]],
               ["Landlord", ["landlord", ["l", "ll", "landl", "llord"]]],
               ["Other (eg Guarantor, Utility provider or Neighbour)", ["other", ["o", "oth", "g", "gr", "guarantor", "guar", "u", "util", "utilities", "utility", "utility provider", "n", "neigh ", "neighbour", "neighbor"]]]]
    expect(described_class.read_tree(path)).to eq(question)
  end
end
