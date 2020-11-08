class Inventory < ApplicationRecord
  belongs_to :user

  def self.search(search)
    if search
      search_item = Inventory.find_by(item: search)
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
