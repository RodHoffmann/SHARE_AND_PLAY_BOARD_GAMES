class PagesController < ApplicationController
  skip_before_action _authenticate_user!, only: :home

  def home
  end
end
