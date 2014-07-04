class List
  include MongoMapper::Document

  key :title, String, required: true
  key :fields, Hash
  timestamps!
  attr_accessible :title, :fields

  belongs_to :user
  many :records

end