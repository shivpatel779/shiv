# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
end

Spree.user_class = "Spree::User"

 Spree::Api::ApiHelpers.class_eval do
   class_variable_set(:@@user_attributes, class_variable_get(:@@user_attributes).push(:phone))
 end

Spree::PermittedAttributes.user_attributes.push :phone, :personal_detail, :location_info, :wallet, :otp_secret, :current_otp, :phone_verified

# register Lipisha payment gateway
Rails.application.config.spree.payment_methods << Spree::Gateway::Lipisha