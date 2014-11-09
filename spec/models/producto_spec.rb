require 'rails_helper'



RSpec.describe Producto, :type => :model do
 
	before {@usuario = Producto.new }

	subject {@usuario}

	describe 'debe tener nombre' do
		it { is_expected.to respond_to(:nombre)}
	end

	describe 'debe tener descripcion' do
		it { is_expected.to respond_to(:descripcion)}
	end

	describe 'debe tener una imagen' do
		it { is_expected.to respond_to(:imagen)}
	end

end
