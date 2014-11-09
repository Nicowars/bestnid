require 'rails_helper'

RSpec.describe Comentario, :type => :model do
    before {@comentario = Comentario.new }

	subject {@comentario}

	describe 'debe tener detalle' do
		it { is_expected.to respond_to(:detalle)}
	end
end
