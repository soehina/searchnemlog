class Article < ApplicationRecord
    validates :url, {presence: true, uniqueness: true}
    validates :title, {presence: true, uniqueness: true}
    def self.search(search)
        search ? where('title LIKE ?', "%#{search}%") : all
    end
end
