class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :role
  
  def admin?
      self.role.name == "administrador"
  end
  
  def edit
      authorize! :edit, @category
  end
  
  
end
