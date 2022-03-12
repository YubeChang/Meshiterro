class PostComment < ApplicationRecord
  belongs_to :post_image   #N:1つまりbelongs_toだから単数系
  belongs_to :user
end
