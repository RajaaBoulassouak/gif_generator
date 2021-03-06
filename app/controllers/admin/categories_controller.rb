class Admin::CategoriesController < Admin::BaseController
  before_action :require_admin

  def new
    @category = Category.new
  end

  def create
    #creating category and gif
  end

  private
    def require_admin
      render file: '/public/404' unless current_admin?
    end
end
