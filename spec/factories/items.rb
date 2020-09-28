FactoryBot.define do
  factory :item do
    association :user
    name            {"Apple"}
    comment         {"ロゴ"}
    category_id     {2}
    status_id       {2}
    shipping_id     {2}
    delivery_id     {10}
    s_date_id       {2}
    price           {1000}
    image           { Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/camera.png')) }
  end
end
