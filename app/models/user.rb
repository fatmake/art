class User < ApplicationRecord

  # has_many :artists
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        #  enum role: [ :client, :admin ] # These are the different possible roles

      # def assign_role
      #   if # logic to decide role here
      #     self.update_attribute(:role, :admin) # This makes the user admin
      #   else
      #     self.update_attribute(:role, :client) # This makes the user client
      #   end
      # end
end
