class Cms::BaseController < ApplicationController

  layout 'cms_backend'
  before_action :authenticate_user!


end
