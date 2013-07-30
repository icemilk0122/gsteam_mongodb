class Proof
  include Mongoid::Document
  extend Enumerize
  
  field :videoid, :type => String
  field :name, :type => String
  field :age, :type => Integer
  field :desc, :type => String
  has_many :pfcate
  field :date, :type => Date
  
  rails_admin do
    field :videoid do
      label "Youtube影片ID"
    end
    field :name do
      label "姓名"
    end
    field :age do
      label "年齡"
    end
    field :desc do
      label "敘述"
    end
    field :pfcate do
      label "分類"
    end
    field :date do 
      label "拍攝日期"
    end
  end
end
