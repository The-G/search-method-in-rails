class Book < ActiveRecord::Base

  def self.search(search)
    if search
      where("name LIKE ?", "%#{search}%")
    else
      all
      # scoped
    end
  end

end
