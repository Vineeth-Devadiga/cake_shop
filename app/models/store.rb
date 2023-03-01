class Store < ApplicationRecord
    has_one_attached :header_image # Use has_one_attached for only one file allowed 
        has_many_attached :images # Use has_many_attached for multiple files allowed
end
