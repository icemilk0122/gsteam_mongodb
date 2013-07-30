class Pfcate
  include Mongoid::Document
  
  field :id, :type => Integer
  field :name, :type => String
  field :note, :type => String
  belongs_to :proof
  
  rails_admin do
    field :name do
      label "名稱"
    end
    field :note do
      label "註解"
    end
  end
end
