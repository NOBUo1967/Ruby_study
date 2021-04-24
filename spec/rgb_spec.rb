require 'spec_helper'

RSpec.describe 'RGB_test' do
  describe 'test_to_hex' do
    context 'to_hex(0, 0, 0)の時' do
      it '#000000を返す' do
        expect(to_hex(0, 0, 0)).to eq '#000000'
      end
    end

    context 'to_hex(255, 255, 255)の時' do
      it '#ffffffを返す' do
        expect(to_hex(255, 255, 255)).to eq '#ffffff'
      end
    end

    context 'to_hex(4, 60, 120)の時' do
      it '#043c78を返す' do
        expect(to_hex(4, 60, 120)).to eq '#043c78'
      end
    end
  end

  describe 'test_to_ints' do
    context "to_ints('#000000')の時" do
      it '[0, 0, 0]を返す' do
        expect(to_ints('#000000')).to eq [0, 0, 0]
      end
    end

    context "to_ints('#ffffff')の時" do
      it '[255, 255, 255]を返す' do
        expect(to_ints('#ffffff')).to eq [255, 255, 255]
      end
    end

    context "to_ints('#043c78')の時" do
      it '[4, 60, 120]を返す' do
        expect(to_ints('#043c78')).to eq [4, 60, 120]
      end
    end
  end
end
