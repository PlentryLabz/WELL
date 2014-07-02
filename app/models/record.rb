class Record
  include MongoMapper::Document

  belongs_to :list

  before_create :setup_keys

  private

  def setup_keys
    list.fields.each do |k, v|
      self.class.key k, v
    end
  end

end