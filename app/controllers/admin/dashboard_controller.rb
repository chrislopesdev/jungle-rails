class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with :name => ENV['USERNAME'], :password => ENV['PASSWORD']
  
  def show
    @product_count = Product.count(:all)
    @category_count = Product.distinct.count(:category_id)
  end
end
