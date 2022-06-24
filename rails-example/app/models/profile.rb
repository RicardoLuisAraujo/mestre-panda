class Profile < ApplicationRecord
  belongs_to :user, required: true, autosave: true
end
