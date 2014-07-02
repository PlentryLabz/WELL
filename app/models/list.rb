class List
  include MongoMapper::Document

  key :title, String, required: true
  key :fields, Hash
  attr_accessible :name, :fields

  belongs_to :user
  many :records

end