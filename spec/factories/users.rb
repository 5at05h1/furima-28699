FactoryBot.define do
  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"000aaa"}
    password_confirmation {password}
    surname               {山田}
    name                  {太郎}
    surname_kana          {ヤマダ}
    name_kana             {タロウ}
  end
end