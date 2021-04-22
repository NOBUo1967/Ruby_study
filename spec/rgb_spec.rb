require 'spec_helper'

RSpec.describe 'RGB_test' do
  context 'test_to_hex' do
    it '(0, 0, 0)は#000000を返す' do
      expect(to_hex(0, 0, 0)).to eq '#000000'
    end
  end
end
