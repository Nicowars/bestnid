require 'rails_helper'



RSpec.describe Producto, :type => :model do

  it "debe tener nombre" do
  	p= Producto.new
  	expect(p).to respond_to(:nombre)
  end

end
