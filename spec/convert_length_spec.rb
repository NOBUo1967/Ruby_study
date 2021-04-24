require 'spec_helper'

RSpec.describe 'ConvertLengthTest' do
  describe 'test_convert_length' do
    context "convert_length(1, 'm', 'in')の時" do
      it '39.37を返す' do
        expect(convert_length(1, 'm', 'in')).to eq 39.37
      end
    end

    context "convert_length(15, 'in', 'm')の時" do
      it '0.38を返す' do
        expect(convert_length(15, 'in', 'm')).to eq 0.83
      end
    end
  end
end