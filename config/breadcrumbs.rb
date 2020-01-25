crumb :root do
  link 'Fmarket', root_path
end

crumb :users do
  link 'マイページ', users_path
  parent :root
end

crumb :profiles do
  link 'プロフィール', profile_users_path
  parent :users
end

crumb :cards do
  link '支払い方法', cards_path
  parent :users
end

crumb :logout do
  link 'ログアウト', logout_users_path
  parent :users
end

crumb :newcard do
  link 'クレジットカード情報入力' ,new_card_path
  parent :cards
end


crumb :categories do
  link 'カテゴリー一覧', categories_path
  parent :root
end


crumb :category do |category|
  link category.category_name, category_path(category)
  parent :categories
end
