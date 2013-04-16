# == Schema Information
#
# Table name: admins
#
#  id                  :integer          not null, primary key
#  email               :string(255)      default(""), not null
#  encrypted_password  :string(255)      default(""), not null
#  sign_in_count       :integer          default(0)
#  current_sign_in_at  :datetime
#  last_sign_in_at     :datetime
#  current_sign_in_ip  :string(255)
#  last_sign_in_ip     :string(255)
#  failed_attempts     :integer          default(0)
#  unlock_token        :string(255)
#  locked_at           :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  remember_created_at :datetime
#

require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
