require 'spec_helper'

RSpec.describe Gate do
  describe 'gateクラス' do
    context '150円のきっぷを購入し、梅田で入場し、十三で出場しようとした時' do
      it '出場できる' do
        umeda = Gate.new(:umeda)
        juso = Gate.new(:juso)
        ticket = Ticket.new(150)
        umeda.enter(ticket)
        expect(juso.exit(ticket)).to eq true
      end
    end

    context '150円のきっぷを購入し、梅田で入場し、三国で出場しようとした時' do
      it '出場できない' do
        umeda = Gate.new(:umeda)
        mikuni = Gate.new(:mikuni)
        ticket = Ticket.new(150)
        umeda.enter(ticket)
        expect(mikuni.exit(ticket)).to eq false
      end
    end
  end
end