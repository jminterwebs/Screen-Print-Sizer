
FactoryBot.define do

  factory :garment do
    name "Classic Tee Shirt"
    style_code "207"

  end

  factory :location do
    name "Full Chest"
    location_code "FC"

    trait :with_garment do
      after(:create) do |location|
        location.garments << create(:garment)
      end
    end
  end
end
