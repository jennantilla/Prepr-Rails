class Inventory < ApplicationRecord
  belongs_to :user
  has_one_attached :img
  before_save do |inventory|
    inventory.item = inventory.item.titleize
    inventory.category = inventory.category.titleize
  end

  def self.search(search)
    if search
      search_item = Inventory.find_by(item: search.titleize)
        if search_item
          self.where(id: search_item)
        else
          @inventories = Inventory.all
        end
    else
      @inventories = Inventory.all
    end
  end

end
