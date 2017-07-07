class PageController < ApplicationController
  def index
    @pages = Page.new.index
  end

  def show
    @page = Page.new.show(params[:id], params[:type])
  end
end
