class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def feed
  end

  def dashboard
  end

  def my_players
  end

end
