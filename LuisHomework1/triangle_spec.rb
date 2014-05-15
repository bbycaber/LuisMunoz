require 'rspec'
require_relative '../Triangle'

 describe 'Triangle' do
	describe '#kind' do
    context 'with correct params' do
      expect(Triangle.new(30,30,60).kind).to eql('Isoceletes')
      expect(Triangle.new(60,60,60).kind).to eql('Equilareral')
    end
  end
end