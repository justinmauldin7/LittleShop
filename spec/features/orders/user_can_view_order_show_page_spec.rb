require 'rails_helper'

include ActionView::Helpers::NumberHelper

describe 'As a registered user' do
  describe 'when I visit an order show page' do
    before(:each) do
      @user = create(:user)

      visit root_path
      click_link "Login"

      fill_in :email, with: @user.email
      fill_in :password, with: @user.password

      click_button "Login"
    end
    it 'displays information about the order' do
      item_1 = create(:item)
      item_2 = create(:item)

      order_1 = create(:order, user: @user)
      order_item_1 = create(:order_item, order: order_1, item: item_1)
      order_item_2 = create(:order_item, order: order_1, item: item_2)

      visit profile_order_path(order_1)
      
      expect(page).to have_content(order_1.id)

      within "#order-item-0" do
        expect(page).to have_content("Name: #{item_1.item_name}")
        expect(page).to have_content("Description: #{item_1.description}")
        expect(page).to have_content("Price: #{number_to_currency(order_item_1.price)}")
        expect(page).to have_content("Quantity: #{order_item_1.quantity}")
      end

      within "#order-item-1" do
        expect(page).to have_content("Name: #{item_2.item_name}")
        expect(page).to have_content("Description: #{item_2.description}")
        expect(page).to have_content("Price: #{number_to_currency(order_item_2.price)}")
        expect(page).to have_content("Quantity: #{order_item_2.quantity}")
      end

      within ".order-info" do
        expect(page).to have_content("Order Placed On: #{order_1.created_at.to_date}")
        expect(page).to have_content("Order Last Updated: #{order_1.updated_at.to_date}")
        expect(page).to have_content("Order Status: #{order_1.order_status}")
        expect(page).to have_content("Number of Items in Order: #{order_1.total_order_items}")
        expect(page).to have_content("Total Order Price: #{number_to_currency(order_1.total_order_price)}")
      end
    end
  end
end
