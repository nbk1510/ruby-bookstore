require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let!(:new_product) {Product.create(name: "sachgiaokhoa", price: 20, author: "khanh")}
  describe "GET products#index" do
    it "show home page" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET products#show" do
    it "should render products#show template" do
      product = new_product
      get :show , params: { id: product.id }
      expect(response.status).to eq(200)

    end
  end

end
