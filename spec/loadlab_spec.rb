require 'spec_helper'

RSpec.describe LoadLab do

  client = LoadLab::Client.new(ENV['LOADLAB_API_TOKEN'])
  
  it "has a version number" do
    expect(LoadLab::VERSION).not_to be nil
  end

  it "I can get jobs" do
    response = client.jobs.get
    expect(response.keys).to eq(["count", "next", "previous", "results"])
  end

  it "I can get plans" do
    response = client.plans.get
    expect(response.keys).to eq(["count", "next", "previous", "results"])
  end

  it "I can get sites" do
    response = client.sites.get
    expect(response.keys).to eq(["count", "next", "previous", "results"])
  end
end
