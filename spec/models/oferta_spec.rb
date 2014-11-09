require 'rails_helper'

RSpec.describe Oferta, :type => :model do
  before {@oferta = Oferta.new }

	subject {@oferta}

	describe 'debe tener detalle' do
		it { is_expected.to respond_to(:detalle)}
	end
end
