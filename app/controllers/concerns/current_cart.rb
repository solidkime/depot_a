module CurrentCart

  private

    def set_cart
      @cart = Cart.find(session[:car_id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:car_id] = @cart.car_id
    end
end