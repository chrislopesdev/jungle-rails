class Admin::DashboardController < ApplicationController
  def show
    @product_count = Product.count(:all)
    @category_count = Product.distinct.count(:category_id)
  end
end
