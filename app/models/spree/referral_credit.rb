class Spree::ReferralCredit < ActiveRecord::Base
  belongs_to :user, class_name: Spree.user_class.to_s, foreign_key: 'user_id'
end
