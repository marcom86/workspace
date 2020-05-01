class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @spaces = Space.all
  end

  def about
  end

  def list
  end

  def privacy
  end
end
