class User < ActiveRecord::Base
  has_many :authentications
  
  has_many :group_users
  has_many :groups, through: :group_users

  has_many :list_users
  has_many :lists, through: :list_users

  def self.with_omniauth auth
    authentication = Authentication.find_by_provider_and_uid(auth["provider"], auth["uid"]) 
    user = (authentication ? authentication.user : nil) || create_with_omniauth(auth)
  end

  private

    def self.create_with_omniauth auth
      user = create!
      authentication = user.authentications.build
      authentication.provider = auth["provider"]
      authentication.uid = auth["uid"]
      authentication.save!
      user
    end
end
