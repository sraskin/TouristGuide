ActiveAdmin.register LocalBusiness do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :location_id, :product_name, :store_name, :product_type, :product_price, :product_details, :product_image, :store_image, :web_address, :phone, :email, :thana, :district, :user_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
