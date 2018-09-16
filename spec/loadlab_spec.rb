RSpec.describe LoadLab do
  it "has a version number" do
    expect(LoadLab::VERSION).not_to be nil
  end

  it "I can instantiate it" do
    puts LoadLab.constants
    client = LoadLab::Client.new('xxxx')
    sites = client.sites.get
    puts sites
    expect(true).to eq(true)
  end
end
