class User
  include MongoMapper::Document

  key :name, String, required: true
  attr_accessible :name

  many :lists

end