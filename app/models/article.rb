class Article < ApplicationRecord
	has_many :comments, dependent: :destroy #delete comments assoc w/ article when artic deleted
	validates :title, presence: true, length: { minimum: 5}
end