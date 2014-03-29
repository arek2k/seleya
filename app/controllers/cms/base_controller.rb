class Cms::BaseController < ApplicationController

  layout 'cms'
  before_filter :authenticate_admin!


end
