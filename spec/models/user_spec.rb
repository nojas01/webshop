require 'rails_helper'

RSpec.describe User, type: :model do
describe "has one cart" do
    let(:user) { create :user }
    let!(:cart) { create :cart, user: user }

    it " - has one cart" do
      expect(user.cart).to eq(cart)
    end
end
describe "can not have more than one cart" do
  let(:user) { create :user }
  let!(:cart1) { create :cart, user: user }
  let!(:cart2) { create :cart, user: user }

  it "- can not have more than one cart " do
      expect {user.cart.destroy}.to change(Cart, :count).by(-1)
  end
end
end
