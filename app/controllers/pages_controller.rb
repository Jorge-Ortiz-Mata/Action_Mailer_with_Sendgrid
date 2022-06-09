class PagesController < ApplicationController

  before_action :authenticate_user!

  def index
    @framework = Framework.new
  end
end
