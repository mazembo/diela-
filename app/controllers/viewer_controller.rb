class ViewerController < ApplicationController
  def show
    @page = Paper.find_by_name(params[:name])
    login_required if @page.admin?
  end
end
