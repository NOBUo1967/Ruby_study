RSpec.describe '四則演算' do
  describe '足し算' do
    it '1 + 1 は 2 になること' do
      expect(1 + 1).to eq 2
    end
  end
  describe '引き算' do
    it '10 - 1 は 9 になること' do
      expect(10 - 1).to eq 9
    end
  end
  describe 'あまり' do
    it '4 / 3 は あまり 1 になること' do
      expect(4 % 3 ).to eq 1
    end
  end
end
