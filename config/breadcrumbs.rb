crumb :root do
  link 'Fmarket', root_path
end

crumb :users do
  link 'マイページ', users_path
  parent :root
end

crumb :categories do
  link 'カテゴリー一覧', categories_path
  parent :root
end