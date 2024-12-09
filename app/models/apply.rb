class Apply < ApplicationRecord
    belongs_to :geek
    belongs_to :job
    validates :read, inclusion: {in: [true, false]}
    validates :invited, inclusion: {in: [true, false]}

    def delete_apply
        self.update(deleted: true)
    end
end
