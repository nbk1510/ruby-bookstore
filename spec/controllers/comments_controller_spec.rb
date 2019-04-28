require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  let!(:new_user) {User.create(email: 'khanh@gmail.com', password: '123123', password_confirmation: '123123')}
  let!(:new_product) {Product.create(name: "sachgiaokhoa", price: 20, author: "khanh")}
  # let(:create_comment) { Comment.create(text: "abc", rating: 1, user_id: new_user.id, product: new_product )}
  let(:params) {params = {comment: {text: "noice", product_id: new_product.id, user_id: new_user.id, rating: 5 }}}
  let(:create_method) {process :create, method: 'POST', params: params, xhr: true }
  context "POST comments#create" do
    it "should create new comment" do
      expect { create_method }.to change{Comment.count}.by(1)
    end

    it "should update the related product" do
      expect { create_method }.to change{Product.find(params[:comment][:product_id]).times_rated}.by(1)
    end

  end
end
