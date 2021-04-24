require 'spec_helper'

RSpec.describe 'fizz_buzz' do
  subject { fizz_buzz(num) }
  context '数字が15の倍数の時' do
    let(:num) { 15 }
    it 'Fizz Buzzと返す' do
      is_expected.to eq 'Fizz Buzz'
    end
  end
  context '数字が3の倍数の時' do
    let(:num) { 3 }
    it 'Fizzと返す' do
      is_expected.to eq 'Fizz'
    end
  end
  context '数字が5の倍数の時' do
    let(:num) { 5 }
    it 'Buzzと返す' do
      is_expected.to eq 'Buzz'
    end
  end
  context '数字が3,5,15のいずれの倍数ではない時' do
    let(:num) { 1 }
    it '数字の文字列を返す' do
      is_expected.to eq '1'
    end
  end
end
