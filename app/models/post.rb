class Post < ApplicationRecord
    validates :title, presence: true
    validates :img, presence: true
    validates :content, presence: true

    before_save :set_delete

    def set_delete
        self.content = (self.content.downcase).gsub("spoiler","")
    end

end
