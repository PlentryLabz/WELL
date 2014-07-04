class User
  include MongoMapper::Document

  key :name, String, required: true
  timestamps!
  attr_accessible :name

  many :lists

end