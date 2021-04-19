require 'spec_helper'

RSpec.describe 'fizz_buzz' do
  context '数字が15の倍数の時' do
    it 'Fizz Buzzと返す' do
      expect(fizz_buzz(15)).to eq 'Fizz Buzz'
    end
  end
  context '数字が3の倍数の時' do
    it 'Fizzと返す' do
      expect(fizz_buzz(3)).to eq 'Fizz'
    end
  end
  context '数字が5の倍数の時' do
    it 'Buzzと返す' do
      expect(fizz_buzz(5)).to eq 'Buzz'
    end
  end
  context '数字が3,5,15のいずれの倍数ではない時' do
    it '数字の文字列を返す' do
      expect(fizz_buzz(1)).to eq '1'
    end
  end
end
