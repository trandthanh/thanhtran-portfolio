class Project < ApplicationRecord
  validates :category, inclusion: { in: ["Personal Project", "Freelance"] }
end
