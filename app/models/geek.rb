class Geek < ApplicationRecord
    has_many :applies
    validates :name, presence: true
    validates :stack, presence: true

    def delete_geek
        self.update(deleted: true)
    end
end
