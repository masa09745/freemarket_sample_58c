lady = Category.create(category_name:"レディース")
men = Category.create(category_name:"メンズ")
kid = Category.create(category_name:"ベビー・キッズ")
life = Category.create(category_name:"インテリア・住まい・小物")
book = Category.create(category_name:"本・音楽・ゲーム")
hobby = Category.create(category_name:"おもちゃ・ホビー・グッズ")
cosme = Category.create(category_name:"コスメ・香水・美容")
camera = Category.create(category_name:"家電・スマホ・カメラ")
sports = Category.create(category_name:"スポーツ・レジャー")
handmade = Category.create(category_name:"ハンドメイド")
ticket = Category.create(category_name:"チケット")
car = Category.create(category_name:"自動車・オートバイ")
other = Category.create(category_name:"その他")

lady_tops = lady.children.create(category_name:"トップス")
lady_jacket = lady.children.create(category_name:"ジャケット/アウター")
lady_pants = lady.children.create(category_name:"パンツ")
lady_skirt = lady.children.create(category_name:"スカート")
lady_onepiece = lady.children.create(category_name:"ワンピース")
lady_shoes = lady.children.create(category_name:"シューズ")
lady_roomwear = lady.children.create(category_name:"パジャマ/ルームウェア")
lady_legwear = lady.children.create(category_name:"レッグウェア")
lady_hat = lady.children.create(category_name:"帽子")
lady_bag = lady.children.create(category_name:"バッグ")
lady_accessory = lady.children.create(category_name:"アクセサリー")
lady_hearaccessory = lady.children.create(category_name:"ヘアアクセサリー")
lady_goods = lady.children.create(category_name:"小物")
lady_watch = lady.children.create(category_name:"時計")
lady_wig = lady.children.create(category_name:"ウィッグ/エクステ")
lady_swimwear = lady.children.create(category_name:"浴衣/水着")
lady_suits = lady.children.create(category_name:"スーツ/フォーマル/ドレス")
lady_maternity = lady.children.create(category_name:"マタニティ")
lady_other = lady.children.create(category_name:"その他")

lady_tops.children.create([{category_name:"Tシャツ/カットソー(半袖/袖なし)"}, {category_name:"Tシャツ/カットソー(七分/長袖)"},{category_name:"シャツ/ブラウス(半袖/袖なし)"},{category_name:"シャツ/ブラウス(半袖/袖なし)"},
{category_name:"シャツ/ブラウス(七分/長袖)"},{category_name:"ポロシャツ"},{category_name:"キャミソール"},{category_name:"タンクトップ"},{category_name:"ホルターネック"},
{category_name:"ニット/セーター"},{category_name:"チュニック"},{category_name:"カーディガン/ボレロ"},{category_name:"アンサンブル"},{category_name:"ベスト/ジレ"},{category_name:"パーカー"},
{category_name:"トレーナー/スウェット"},{category_name:"ベアトップ/チューブトップ"},{category_name:"ジャージ"},{category_name:"その他"}])

lady_jacket.children.create([{category_name:"ノーカラージャケット"}, {category_name:"Gジャン/デニムジャケット"},{category_name:"レザージャケット"},
{category_name:"ダウンジャケット"},{category_name:"ライダースジャケット"},{category_name:"ミリタリージャケット"},{category_name:"ダウンベスト"},{category_name:"ジャンパー/ブルゾン"},
{category_name:"ポンチョ"},{category_name:"ロングコート"},{category_name:"トレンチコート"},{category_name:"ダッフルコート"},{category_name:"ピーコート"},
{category_name:"チェスターコート"},{category_name:"モッズコート"},{category_name:"スタジャン"},{category_name:"毛皮/ファーコート"},{category_name:"スプリングコート"},{category_name:"スカジャン"},{:category_name=>"その他"}])

lady_pants.children.create([{category_name:"デニム/ジーンズ"},{category_name:"ショートパンツ"},{category_name:"カジュアルパンツ"},{category_name:"ハーフパンツ"},
{category_name:"チノパン"},{category_name:"ワークパンツ/カーゴパンツ"},{category_name:"クロップドパンツ"},{category_name:"サロペット/オーバーオール"},
{category_name:"オールインワン"},{category_name:"サルエルパンツ"},{category_name:"ガウチョパンツ"},{category_name:"その他"},])

lady_skirt.children.create([{category_name:"ミニスカート"},{category_name:"ひざ丈スカート"},{category_name:"ロングスカート"},{category_name:"キュロット"},{category_name:"その他"},])

lady_onepiece.children.create([{category_name:"ミニワンピース"},{category_name:"ひざ丈ワンピース"},{category_name:"ロングワンピース"},{category_name:"その他"},])

lady_shoes.children.create([{category_name:"ハイヒール/パンプス"},{category_name:"ブーツ"},{category_name:"サンダル"},{category_name:"スニーカー"},
{category_name:"ミュール"},{category_name:"モカシン"},{category_name:"ローファー/革靴"},{category_name:"フラットシューズ/バレエシューズ"},{category_name:"長靴/レインシューズ"},{category_name:"その他"},])

lady_roomwear.children.create([{category_name:"パジャマ"},{category_name:"ルームウェア"},{category_name:"その他"}])

lady_legwear.children.create([{category_name:"ソックス"},{category_name:"スパッツ/レギンス"},{category_name:"ストッキング/タイツ"},{category_name:"レッグウォーマー"},{category_name:"その他"}])

lady_hat.children.create([{category_name:"ニットキャップ/ビーニー"},{category_name:"ハット"},{category_name:"ハンチング/ベレー帽"},{category_name:"キャップ"},{category_name:"キャスケット"},{category_name:"麦わら帽子"},{category_name:"その他"}])

lady_bag.children.create([{category_name:"ハンドバッグ"}, {category_name:"トートバッグ"},{category_name:"エコバッグ"},{category_name:"リュック/バックパック"},{category_name:"ボストンバッグ"},
{category_name:"スポーツバッグ"},{category_name:"ショルダーバッグ"},{category_name:"クラッチバッグ"},{category_name:"ポーチ/バニティ"},{category_name:"ボディバッグ/ウエストバッグ"},{category_name:"マザースバッグ"},
{category_name:"メッセンジャーバッグ"},{category_name:"ビジネスバッグ"},{category_name:"旅行用バッグ/キャリーバッグ"},{category_name:"ショップ袋"},{category_name:"和装用バッグ"},{category_name:"かごバック"},{category_name:"その他"}])

