class ApplicationController < ActionController::Base
  before_action :set_defaults

  def set_defaults
    @hashtag =  Hashtag.top
  end
end
