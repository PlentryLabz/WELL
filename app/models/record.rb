class Record
  include MongoMapper::Document

  TYPES = {
    string: String,
  }

  key :data, Hash
  attr_accessible :data

  validate :data_validation

  belongs_to :list

  private

  def data_validation
    wrong_data_fields = data.keys - list.fields.keys
    empty_data_fields = list.fields.keys - data.keys

    unless wrong_data_fields == []
      errors.add(:data, "Data includes wrong fields: #{wrong_data_fields}")
    end

    unless empty_data_fields == []
      errors.add(:data, "Data fields empty: #{empty_data_fields}")
    end
  end
end