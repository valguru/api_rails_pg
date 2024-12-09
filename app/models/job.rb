class Job < ApplicationRecord
    belongs_to :company
    has_many :applies

    validates :name, presence: true
    validates :place, presence: true

    def delete_job
        self.update(deleted: true)
    end
end
