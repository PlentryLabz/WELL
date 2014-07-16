# -*- encoding : utf-8 -*-

FactoryGirl.define do
  factory :list do
    title "List"
    fields({foo: :string, bar: :integer})
    user
  end

end