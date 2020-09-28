FactoryBot.define do
  factory :item do
    association :user
    name            {"Apple"}
    comment         {"ロゴ"}
    category_id     {"家電・スマホ・カメラ"}
    status_id       {"新品、未使用"}
    shipping_id     {"送料込み(出品者負担)"}
    delivery_id     {"大阪府"}
    s_date_id       {"1~2日で発送"}
    price           {"1000"}
    picture { Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/camera.png')) }
  end
end
