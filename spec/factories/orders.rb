FactoryBot.define do
  factory :order do
    postal_code       {230-0045}
    prefectures_id    {15}
    municipality      {"横浜市鶴見区"}
    address           {"末広町1-1"}
    phone             {0123456789}
  end
end
