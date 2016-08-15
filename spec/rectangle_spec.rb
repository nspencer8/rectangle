require 'rectangle.rb'
describe 'rectangle' do
  before(:all) do
    @obj = rectangle(30, 20).split("\n")
    @err1 = 'Height and Width must be greater than zero'
    @err2 = 'Input must be numerical'
  end

  it 'should output correct sides' do
    expect(@obj[1..-2].map { |x| x[0] }.join).to eq('|' * 28)
    expect(@obj[1..-2].map { |x| x[-1] }.join).to eq('|' * 28)
  end

  it 'should output correct top and bottom ' do
    expect(@obj[0]).to eq('-' * 20)
    expect(@obj[-1]).to eq('-' * 20)
  end

  it 'should have an empty body' do
    expect(@obj[1..-2].map { |x| x[1..-2].squeeze }.uniq.join).to eq(' ')
  end

  it 'should defend against negative/zero and non integer edge cases' do
    expect(rectangle(0, -5)).to eq(@err1)
    expect(rectangle(-10, 0)).to eq(@err1)
    expect(rectangle({}, 'abc')).to eq(@err2)
  end
end
