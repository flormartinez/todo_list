class Task < ActiveRecord::Base
	validates :title, presence: true
	belongs_to :list
	scope :incomplete, -> {where("completed = 'f'")}
	scope :complete, -> {where("completed = 't'")}
end
