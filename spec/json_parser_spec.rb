require './app.rb'

describe JsonParser do

  def app
    JsonParser.new!
  end

  it 'returns string from greeting' do
    expect(app.greeting).to eq 'Hello World'
  end

end