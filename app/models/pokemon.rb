class Pokemon < ApplicationRecord
  belongs_to :user, optional: true
  
  def self.search(search)
    if search
      where(["name LIKE?","%#{search}%"])
    else
      all
    end
  end
  def self.per_page
    9
  end
end
