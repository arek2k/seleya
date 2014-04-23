class Cms::BaseController < ApplicationController

  layout 'cms'
  before_action :authenticate_user!


end
