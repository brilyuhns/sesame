RSpec.describe VaultActiverecord do
  it "has a version number" do
    expect(VaultActiverecord::VERSION).not_to be nil
  end

  it "has a patch method" do
    expect(VaultActiverecord.respond_to?('patch')).to eq(true)
  end

  describe :patch do 
  	it 'calls the block passed' do 
  	  VaultActiverecord.patch do { username: 'pg_username' } end
  	  expect($database_creds).to eq({username: 'pg_username'})
  	  VaultActiverecord.patch do { username: 'pg_username2' } end
  	  expect($database_creds).to eq({username: 'pg_username2'})
  	end
  end
end
