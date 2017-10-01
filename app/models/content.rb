class Content < ApplicationRecord
		validates :content, on: :create
	end
end
