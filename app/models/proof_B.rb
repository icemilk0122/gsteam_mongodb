class Proof
  include Mongoid::Document
  extend Enumerize
  
  field :videoID, :type => String
  field :name, :type => String
  field :age, :type => Integer
  field :desc, :type => String
  field :cate, :type => Integer
  #enumerize :cate, in: { 1 => "分類1", 2 => "分類2"}, default: 1
  field :date, :type => Date
  
  rails_admin do
    field :videoID do
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
    field :cate do
      label "分類"
    end
    field :date do 
      label "拍攝日期"
    end
  end
end
