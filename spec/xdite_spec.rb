require 'xdite'
describe Xdite do
  before(:all) do
    @quotes = File.readlines(File.expand_path('../../lib/xdite/quotes.txt', __FILE__)).map(&:strip)
  end

  it 'says famous quotes' do
    expect(@quotes).to include(Xdite.says)
    expect(@quotes).to include(*Xdite.says(10).split($/))
  end

  it 'debate' do
    expect(Xdite.debate).to match(/[z\.]+/i)
  end

  it 'apologize' do
    expect(Xdite.apologize).to be_a(String)
    expect(Xdite.apologize).not_to be_empty
  end
end