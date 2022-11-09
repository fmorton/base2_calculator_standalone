class ReferralAddSentAt < ActiveRecord::Migration
  def up
    add_column :referrals, :sent_at, :datetime
  end

  def down
  end
end
