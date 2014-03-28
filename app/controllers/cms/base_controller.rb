class Cms::BaseController < ApplicationController

  layout 'cms'
  before_filter :authenticate_user!


end
