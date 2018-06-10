RSpec.describe VaultActiverecord do
  it "has a version number" do
    expect(VaultActiverecord::VERSION).not_to be nil
  end

  it "has a patch method" do
    expect(VaultActiverecord.respond_to?('patch')).to eq(true)
  end
end
