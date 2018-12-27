class Item < ApplicationRecord
  validates_presence_of :item_name, :image_url,
                        :inventory, :price, :description, :user_id

  belongs_to :user
  has_many :order_items
  has_many :orders, through: :order_items

  def merchant_name
    user.name
  end

  def total_for_item
    total = Hash.new(0)
    total[:price] += self.price
    total[:price]
  end

  def toggle_active(toggle_params)
    toggle(:enabled).save
  end

  private

  def toggle_params
      params.require(:item).permit(:enabled)
  end
end
