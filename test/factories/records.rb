# -*- encoding : utf-8 -*-

FactoryGirl.define do
  factory :record do
    data({foo: 'foo', bar: 1})
    list
  end

end