class Company < ApplicationRecord
    has_many :jobs
    validates :name, presence: true, length: { minimum: 2, maximum: 40 }
    validates :location, presence: true, length: { minimum: 2, maximum: 40 }

    def delete_company
        self.update(deleted: true)
    end
end
