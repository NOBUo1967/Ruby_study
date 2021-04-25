require 'spec_helper'

RSpec.describe Gate do
  describe '改札機プログラム' do
    before do
      @umeda = Gate.new(:umeda)
      @juso = Gate.new(:juso)
      @mikuni = Gate.new(:mikuni)
    end

    context '150円のきっぷを購入し、梅田で入場し、十三で出場しようとした時' do
      it '出場できる' do
        ticket = Ticket.new(150)
        @umeda.enter(ticket)
        expect(@juso.exit(ticket)).to eq true
      end
    end

    context '150円のきっぷを購入し、梅田で入場し、三国で出場しようとした時' do
      it '出場できない' do
        ticket = Ticket.new(150)
        @umeda.enter(ticket)
        expect(@mikuni.exit(ticket)).to eq false
      end
    end

    context '190円のきっぷを購入し、梅田で入場し、三国で出場しようとした時' do
      it '出場できる' do
        ticket = Ticket.new(190)
        @umeda.enter(ticket)
        expect(@mikuni.exit(ticket)).to eq true
      end
    end

    context '150円のきっぷを購入し、十三で入場し、三国で出場しようとした時' do
      it '出場できる' do
        ticket = Ticket.new(150)
        @juso.enter(ticket)
        expect(@mikuni.exit(ticket)).to eq true
      end
    end
  end
end