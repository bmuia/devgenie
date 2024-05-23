class Project < ApplicationRecord
    has_many :tasks
    has_many :issues
    has_many :project_owners
    has_many :users, through: :project_owners
end
