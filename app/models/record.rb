class Record
  include MongoMapper::Document

  TYPES = {
    string: String,
  }

  belongs_to :list
  timestamps!

  before_create :setup_keys

  private

  def setup_keys
    list.fields.each do |k, v|
      self.class.key k, TYPES[v]
    end
  end

end