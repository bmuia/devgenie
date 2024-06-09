class Project < ApplicationRecord
    has_many :tasks, dependent: :destroy
    has_many :issues
    has_many :project_owners
    has_many :users, through: :project_owners

    validates :name, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :status, presence: true
end
