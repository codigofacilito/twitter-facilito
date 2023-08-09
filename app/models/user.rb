# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string
#  email                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets
  has_one_attached :avatar

  def username_or_email
    username || email.split('@')[0]
  end
    
  def follow(user)
    Follower.create(
      user: self,
      follower_id: user.id
    )
  end

  def unfollow(user)
    Follower.where(user:user).where(follower_id:id).delete_all
  end

  def following?(user)
    Follower.where(user:user).where(follower_id:id).any?
  end

end
