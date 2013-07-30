class User
  include Mongoid::Document
  extend Enumerize
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  
  ## Database authenticatable
  field :email,              :type => String, :default => ""
  field :encrypted_password, :type => String, :default => ""
  field :name,               :type => String, :default => ""
  validates_length_of :name, :allow_blank => false
  field :age,                :type => Integer,:default => 30
  validates_numericality_of :age
  field :gender,             :type => String, :default => ""
  enumerize :gender, in: {:male => "m", :female => "f"}, default: :male
  field :upline,             :type => String, :default => ""
  validates_length_of :upline, :allow_blank => false
  field :address,            :type => String, :default => ""
  field :birthday,           :type => String, :default => ""
#  embeds_many :birthdays
#  accepts_nested_attributes_for :birthdays, :allow_destroy => true
  field :tel,                :type => String, :default => ""
  field :skype,              :type => String, :default => ""
  field :work,               :type => String, :default => ""
  field :role,               :type => String, :default => ""
  enumerize :role, in: [:user, :editor, :admin], default: :user
  
  ## Recoverable
  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time
  
  ## Rememberable
  field :remember_created_at, :type => Time
  
  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String
  
  ## Confirmable
  # field :confirmation_token,   :type => String
  # field :confirmed_at,         :type => Time
  # field :confirmation_sent_at, :type => Time
  # field :unconfirmed_email,    :type => String # Only if using reconfirmable
  
  ## Lockable
  # field :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    :type => String # Only if unlock strategy is :email or :both
  # field :locked_at,       :type => Time
  
  ## Token authenticatable
  # field :authentication_token, :type => String
  rails_admin do 
    field :name do
      label "姓名"
    end
    field :email do
      label "Email"
    end
    field :age do
      label "年齡"
    end
    field :birthday do
      label "生日"
      help "ex. 1983/01/22"
    end
    field :gender do
      label "性別"
    end
    field :upline do
      label "介紹人"
    end
    field :address do
      label "地址"
    end
    field :tel do
      label "電話"
    end
    field :skype do
      label "Skype"
    end
    field :work do
      label "職業"
    end
    field :role do
      label "權限"
    end
    field :_id do
      label "id"
      read_only true
    end
    field :remember_created_at do
      label "最後登入時間"
      read_only true
    end
  end
end

#class Birthday
#  include Mongoid::Document
#  #extend Enumerize
#  field :birth_year,             :type => String
#  #enumerize :birth_year, in: [1983,1982], default: 1982
#  #field :birth_mon,             :type => String
#  #enumerize :birth_mon, in: [1, 2,3,4,5,6,7,8,9,10,11,12], default: 1
#  embedded_in :user
#end

