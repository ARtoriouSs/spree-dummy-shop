Spree::CheckoutController.class_eval do
  def update
    if @order.type_selection?
      params[:order][:customer_type] = params[:entity] ? :entity : :individual
    end
    @order.update(entity_params)

    if @order.update_from_params(params, permitted_checkout_attributes, request.headers.env)
      @order.temporary_address = !params[:save_user_address]
      unless @order.next
        flash[:error] = @order.errors.full_messages.join("\n")
        redirect_to(checkout_state_path(@order.state)) && return
      end

      if @order.completed?
        @current_order = nil
        flash.notice = Spree.t(:order_processed_successfully)
        flash['order_completed'] = true
        redirect_to completion_route
      else
        redirect_to checkout_state_path(@order.state)
      end
    else
      render :edit
    end
  end

  private

  def check_registration
    return
  end

  def entity_params
    unless params[:order]&.empty?
      params.require(:order).permit(:payer_account_number,
                                    :representative_position,
                                    :grounds,
                                    :bank_name,
                                    :bank_address,
                                    :checking_account,
                                    :bic,
                                    :customer_type)
    else
      {}
    end
  end
end
