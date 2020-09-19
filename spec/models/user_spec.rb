require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる" do
        expect(@user).to be_valid
      end
      it "passwordが6文字以上であれば登録できる" do
        expect(@user).to be_valid
      end
      it "passwordが半角英数字混合であれば登録できる" do
        expect(@user).to be_valid
      end
      it "passwordを2回入力すれば登録できる" do
        expect(@user).to be_valid
      end
      it "emailは@を含んでいれば登録できる" do
        expect(@user).to be_valid
      end
      it "surname,nameは全角漢字,ひらがな,カタカナであれば登録できる" do
        expect(@user).to be_valid
      end
      it "surname_kana,name_kanaは全角カタカナであれば登録できる" do
        expect(@user).to be_valid
      end
    end
    context '新規登録がうまくいかないとき' do
      it "nicknameが空だと登録できない" do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "emailが空では登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "passwordが空では登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it "surnameが空では登録できない" do
        @user.surname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Surname can't be blank")
      end
      it "nameが空では登録できない" do
        @user.name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end
      it "surname_kanaが空では登録できない" do
        @user.surname_kana = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Surname_kana can't be blank")
      end
      it "name_kanaが空では登録できない" do
        @user.name_kana = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Name_kana can't be blank")
      end
      it "birthdayが空では登録できない" do
        @user.birthday = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Birthday can't be blank")
      end
    end
  end
end
