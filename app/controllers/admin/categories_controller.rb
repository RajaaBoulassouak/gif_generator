class Admin::CategoriesController < ApplicationController
  before_action :require_admin

  def new
    @category = Category.new
  end

  def create
  end

  private
    def require_admin
      render file: '/public/404' unless current_admin?
    end
end
