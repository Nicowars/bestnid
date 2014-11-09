require 'rails_helper'



RSpec.describe Usuario, :type => :model do
 
	before {@usuario = Usuario.new }
	before {@usuario2 = Usuario.new(nombre: 'Pedro', mail: 'pedro@hotmail.com', password: 'qwerty')}

	subject {@usuario}

	describe 'debe tener nombre' do
		it { is_expected.to respond_to(:nombre)}
	end

	describe 'debe tener mail' do
		it { is_expected.to respond_to(:mail)}
	end

	describe 'debe tener password' do
		it { is_expected.to respond_to(:password)}
	end

	subject {@usuario2}

	describe 'cuando el mail esta repetido' do
		before do
			usuario_rep = @usuario2.dup
			usuario_rep.save
		end

	it {is_expected.not_to be_valid}
	end
end
