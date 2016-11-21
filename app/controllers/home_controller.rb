class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def profile
  end
end
