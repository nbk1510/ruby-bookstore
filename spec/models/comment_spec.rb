require 'rails_helper'

RSpec.describe Comment, type: :model do
  let!(:new_user) {User.create(email: 'khanh@gmail.com', password: '123123', password_confirmation: '123123')}
  let!(:new_product) {Product.create(name: "sachgiaokhoa", price: 20, author: "khanh")}
  let(:create_comment) { Comment.create(text: "abc", rating: 1, user_id: new_user.id, product: new_product )}

  context "When creating a new Comment" do
    it "Should create one new Comment and update the related Product" do
      expect { create_comment }.to change{Comment.count}.by(1)
    end
  end

end
