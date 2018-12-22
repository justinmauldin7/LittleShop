require 'rails_helper'

describe 'As a visitor' do
  before(:each) do
    @item_1 = create(:item)
    @item_2 = create(:item)
    @item_3 = create(:item)
    @item_4 = create(:item)
    @item_5 = create(:item)
    @item_6 = create(:item)

    @user = create(:user)
  end
  describe 'items can be added to cart' do
    it 'displays a message' do

      visit item_path(@item_1)

      click_button "Add Item to Cart"
      expect(page).to have_content("You now have 1 item in your shopping cart")
      expect(current_path).to eq(items_path)
      expect(page).to have_content("Shopping Cart: 1")

      visit item_path(@item_2)
      click_button "Add Item to Cart"
      expect(page).to have_content("Shopping Cart: 2")
    end
  end
  describe 'As a Visitor OR Registered user' do
    it 'can see message with empty cart' do

      visit cart_path

      expect(page).to have_content('your cart is empty')
    end
  end
    it 'can see item name when cart isnt empty' do
      item_5 = create(:item)

      visit item_path(item_5)

      click_button 'Add Item to Cart'

      visit cart_path(@user)

      expect(page).to have_content(item_5.item_name)
  end
    it 'can empty all items from cart' do
      visit item_path(@item_1)
      click_button 'Add Item to Cart'

      visit item_path(@item_2)
      click_button 'Add Item to Cart'

      visit item_path(@item_3)
      click_button 'Add Item to Cart'

      expect(page).to have_content("Shopping Cart: 3")

      visit cart_path(@user)
      click_link 'Empty My Cart'

      expect(page).to have_content("Shopping Cart: 0")
  end
end
