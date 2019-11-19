class Article < ApplicationRecord
    validates :url, uniqueness: {
        scope: :title,
        allow_nil: true,
        condition:->{where(is_deleted: false)}
    }
    # validates :title, {presence: true, uniqueness: true}
    def self.search(search)
        search ? where('title LIKE ?', "%#{search}%") : all
    end
end
