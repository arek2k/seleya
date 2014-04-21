class Cms::BaseController < ApplicationController

  layout 'cms'
  before_action :authenticate_admin!


end
