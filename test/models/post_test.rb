require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  validates :post_title, presence: true, length: { maximum: 50}

  validates :post_content, presence: true, length: { maximum: 50}

end
