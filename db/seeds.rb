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
lady_shoes = lady.children.create(category_name:"靴")
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

men_tops = men.children.create(category_name:"トップス")
men_jacket = men.children.create(category_name:"ジャケット/アウター")
men_pants = men.children.create(category_name:"パンツ")
men_shoes = men.children.create(category_name:"靴")
men_bag = men.children.create(category_name:"バッグ")
men_suits = men.children.create(category_name:"スーツ")
men_hat = men.children.create(category_name:"帽子")
men_accessory = men.children.create(category_name:"アクセサリー")
men_goods = men.children.create(category_name:"小物")
men_watch = men.children.create(category_name:"時計")
men_swimwear = men.children.create(category_name:"水着")
men_legwear = men.children.create(category_name:"レッグウェア")
men_underwear = men.children.create(category_name:"アンダーウェア")
men_other = men.children.create(category_name:"その他")

kid_girl_baby = kid.children.create(category_name:"ベビー服(女の子用) ~95cm")
kid_boy_baby = kid.children.create(category_name:"ベビー服(男の子用) ~95cm")
kid_unisex_baby = kid.children.create(category_name:"ベビー服(男女兼用) ~95cm")
kid_girl = kid.children.create(category_name:"キッズ服(女の子用) 100cm~")
kid_boy = kid.children.create(category_name:"キッズ服(男の子用) 100cm~")
kid_unisex = kid.children.create(category_name:"キッズ服(男女兼用) 100cm~")
kid_shoes = kid.children.create(category_name:"キッズ靴")
kid_goods = kid.children.create(category_name:"子ども用ファッション小物")
kid_toilet = kid.children.create(category_name:"おむつ/トイレ/バス")
kid_outside = kid.children.create(category_name:"外出/移動用品")
kid_meal = kid.children.create(category_name:"授乳/食事")
kid_home = kid.children.create(category_name:"ベビー家具/寝具/室内用品")
kid_toy = kid.children.create(category_name:"おもちゃ")
kid_celebration = kid.children.create(category_name:"行事/記念品")
kid_other = kid.children.create(category_name:"その他")

life_kitchen = life.children.create(category_name:"キッチン/食器")
life_bed = life.children.create(category_name:"ベッド/マットレス")
life_sofa = life.children.create(category_name:"ソファ/ソファベッド")
life_chair = life.children.create(category_name:"椅子/チェア")
life_table = life.children.create(category_name:"机/テーブル")
life_storage = life.children.create(category_name:"収納家具")
life_mat = life.children.create(category_name:"ラグ/カーペット/マット")
life_curtain = life.children.create(category_name:"カーテン/ブラインド")
life_illumination = life.children.create(category_name:"ライト/照明")
life_bedding = life.children.create(category_name:"寝具")
life_goods = life.children.create(category_name:"インテリア小物")
life_season = life.children.create(category_name:"季節/年中行事")
life_other = life.children.create(category_name:"その他")


lady_tops.children.create([{category_name:"すべて"},{category_name:"Tシャツ/カットソー(半袖/袖なし)"}, {category_name:"Tシャツ/カットソー(七分/長袖)"},{category_name:"シャツ/ブラウス(半袖/袖なし)"},{category_name:"シャツ/ブラウス(半袖/袖なし)"},
{category_name:"シャツ/ブラウス(七分/長袖)"},{category_name:"ポロシャツ"},{category_name:"キャミソール"},{category_name:"タンクトップ"},{category_name:"ホルターネック"},
{category_name:"ニット/セーター"},{category_name:"チュニック"},{category_name:"カーディガン/ボレロ"},{category_name:"アンサンブル"},{category_name:"ベスト/ジレ"},{category_name:"パーカー"},
{category_name:"トレーナー/スウェット"},{category_name:"ベアトップ/チューブトップ"},{category_name:"ジャージ"},{category_name:"その他"}])

lady_jacket.children.create([{category_name:"すべて"},{category_name:"ノーカラージャケット"}, {category_name:"Gジャン/デニムジャケット"},{category_name:"レザージャケット"},
{category_name:"ダウンジャケット"},{category_name:"ライダースジャケット"},{category_name:"ミリタリージャケット"},{category_name:"ダウンベスト"},{category_name:"ジャンパー/ブルゾン"},
{category_name:"ポンチョ"},{category_name:"ロングコート"},{category_name:"トレンチコート"},{category_name:"ダッフルコート"},{category_name:"ピーコート"},
{category_name:"チェスターコート"},{category_name:"モッズコート"},{category_name:"スタジャン"},{category_name:"毛皮/ファーコート"},{category_name:"スプリングコート"},{category_name:"スカジャン"},{category_name: "その他"}])

lady_pants.children.create([{category_name:"すべて"},{category_name:"デニム/ジーンズ"},{category_name:"ショートパンツ"},{category_name:"カジュアルパンツ"},{category_name:"ハーフパンツ"},
{category_name:"チノパン"},{category_name:"ワークパンツ/カーゴパンツ"},{category_name:"クロップドパンツ"},{category_name:"サロペット/オーバーオール"},
{category_name:"オールインワン"},{category_name:"サルエルパンツ"},{category_name:"ガウチョパンツ"},{category_name:"その他"}])

lady_skirt.children.create([{category_name:"すべて"},{category_name:"ミニスカート"},{category_name:"ひざ丈スカート"},{category_name:"ロングスカート"},{category_name:"キュロット"},{category_name:"その他"}])

lady_onepiece.children.create([{category_name:"すべて"},{category_name:"ミニワンピース"},{category_name:"ひざ丈ワンピース"},{category_name:"ロングワンピース"},{category_name:"その他"}])

lady_shoes.children.create([{category_name:"すべて"},{category_name:"ハイヒール/パンプス"},{category_name:"ブーツ"},{category_name:"サンダル"},{category_name:"スニーカー"},
{category_name:"ミュール"},{category_name:"モカシン"},{category_name:"ローファー/革靴"},{category_name:"フラットシューズ/バレエシューズ"},{category_name:"長靴/レインシューズ"},{category_name:"その他"}])

lady_roomwear.children.create([{category_name:"すべて"},{category_name:"パジャマ"},{category_name:"ルームウェア"},{category_name:"その他"}])

lady_legwear.children.create([{category_name:"すべて"},{category_name:"ソックス"},{category_name:"スパッツ/レギンス"},{category_name:"ストッキング/タイツ"},{category_name:"レッグウォーマー"},{category_name:"その他"}])

lady_hat.children.create([{category_name:"すべて"},{category_name:"ニットキャップ/ビーニー"},{category_name:"ハット"},{category_name:"ハンチング/ベレー帽"},{category_name:"キャップ"},{category_name:"キャスケット"},{category_name:"麦わら帽子"},{category_name:"その他"}])

lady_bag.children.create([{category_name:"すべて"},{category_name:"ハンドバッグ"}, {category_name:"トートバッグ"},{category_name:"エコバッグ"},{category_name:"リュック/バックパック"},{category_name:"ボストンバッグ"},
{category_name:"スポーツバッグ"},{category_name:"ショルダーバッグ"},{category_name:"クラッチバッグ"},{category_name:"ポーチ/バニティ"},{category_name:"ボディバッグ/ウエストバッグ"},{category_name:"マザースバッグ"},
{category_name:"メッセンジャーバッグ"},{category_name:"ビジネスバッグ"},{category_name:"旅行用バッグ/キャリーバッグ"},{category_name:"ショップ袋"},{category_name:"和装用バッグ"},{category_name:"かごバック"},{category_name:"その他"}])

lady_accessory.children.create([{category_name:"すべて"},{category_name:"ネックレス"},{category_name:"ブレスレット"},{category_name:"バングル/リスト"},{category_name:"リング"},{category_name:"ピアス(片耳用)"},{category_name:"ピアス(両耳用)"},
{category_name:"イヤリング"},{category_name:"アンクレット"},{category_name:"ブローチ/コサージュ"},{category_name:"チャーム"},{category_name:"その他"}])

lady_hearaccessory.children.create([{category_name:"すべて"},{category_name:"ヘアゴム/シュシュ"},{category_name:"ヘアバンド/カチューシャ"},{category_name:"ヘアピン"},{category_name:"その他"}])

lady_goods.children.create([{category_name:"すべて"},{category_name:"長財布"},{category_name:"折り財布"},{category_name:"コインケース/小銭入れ"},{category_name:"名刺入れ/定期入れ"},{category_name:"キーケース"},
{category_name:"キーホルダー"},{category_name:"手袋/アームカバー"},{category_name:"ハンカチ"},{category_name:"ベルト"},{category_name:"マフラー/ショール"},{category_name:"ストール/スヌード"},
{category_name:"バンダナ/スカーフ"},{category_name:"ネックウォーマー"},{category_name:"サスペンダー"},{category_name:"サングラス/メガネ"},{category_name:"モバイルケース/カバー"},{category_name:"手帳"},
{category_name:"イヤマフラー"},{category_name:"傘"},{category_name:"レインコート/ポンチョ"},{category_name:"ミラー"},{category_name:"タバコグッズ"},{category_name:"その他"}])

lady_watch.children.create([{category_name:"すべて"},{category_name:"腕時計(アナログ)"},{category_name:"腕時計(デジタル)"},{category_name:"ラバーベルト"},{category_name:"レザーベルト"},{category_name:"金属ベルト"},{category_name:"その他"}])

lady_wig.children.create([{category_name:"すべて"},{category_name:"前髪ウィッグ"},{category_name:"ロングストレート"},{category_name:"ロングカール"},{category_name:"ショートストレート"},{category_name:"ショートカール"},{category_name:"その他"}])

lady_swimwear.children.create([{category_name:"すべて"},{category_name:"浴衣"},{category_name:"着物"},{category_name:"振袖"},{category_name:"長襦袢/半襦袢"},{category_name:"水着セパレート"},{category_name:"水着ワンピース"},{category_name:"水着スポーツ用"},{category_name:"その他"}])

lady_suits.children.create([{category_name:"すべて"},{category_name:"スカートスーツ上下"},{category_name:"パンツスーツ上下"},{category_name:"ドレス"},{category_name:"パーティバッグ"},{category_name:"シューズ"},{category_name:"ウェディング"},{category_name:"その他"}])

lady_maternity.children.create([{category_name:"すべて"},{category_name:"トップス"},{category_name:"アウター"},{category_name:"インナー"},{category_name:"ワンピース"},{category_name:"パンツ/スパッツ"},{category_name:"スカート"},{category_name:"パジャマ"},{category_name:"授乳服"},{category_name:"その他"}])

lady_other.children.create([{category_name:"すべて"},{category_name:"コスプレ"},{category_name:"下着"},{category_name:"その他"}])

men_tops.children.create([{category_name:"すべて"},{category_name:"Tシャツ/カットソー(半袖/袖なし)"}, {category_name:"Tシャツ/カットソー(七分/長袖)"},{category_name:"シャツ"},
{category_name:"ポロシャツ"},{category_name:"タンクトップ"},{category_name:"ニット/セーター"},{category_name:"パーカー"},{category_name:"カーディガン"},
{category_name:"スウェット"},{category_name:"ジャージ"},{category_name:"ベスト"},{category_name:"その他"}])

men_jacket.children.create([{category_name:"すべて"},{category_name:"テーラードジャケット"},{category_name:"ノーカラージャケット"},{category_name:"Gジャン/デニムジャケット"},{category_name:"レザージャケット"},
{category_name:"ダウンジャケット"},{category_name:"ライダースジャケット"},{category_name:"ミリタリージャケット"},{category_name:"ナイロンジャケット"},{category_name:"フライトジャケット"},{category_name:"ダッフルコート"},{category_name:"ピーコート"},
{category_name:"ステンカラーコート"},{category_name:"トレンチコート"},{category_name:"モッズコート"},{category_name:"チェスターコート"},{category_name:"スタジャン"},{category_name:"スカジャン"},{category_name:"ブルゾン"},{category_name:"マウンテンパーカー"},
{category_name:"ダウンベスト"},{category_name:"ポンチョ"},{category_name:"カバーオール"},{category_name:"その他"}])

men_pants.children.create([{category_name:"すべて"},{category_name:"デニム/ジーンズ"},{category_name:"ワークパンツ/カーゴパンツ"},{category_name:"スラックス"},
{category_name:"チノパン"},{category_name:"ショートパンツ"},{category_name:"ペインターパンツ"},{category_name:"サルエルパンツ"},{category_name:"オーバーオール"},{category_name:"その他"}])

men_shoes.children.create([{category_name:"すべて"},{category_name:"スニーカー"},{category_name:"サンダル"},{category_name:"ブーツ"},{category_name:"モカシン"},
{category_name:"ドレス/ビジネス"},{category_name:"長靴/レインシューズ"},{category_name:"デッキシューズ"},{category_name:"その他"}])

men_bag.children.create([{category_name:"すべて"},{category_name:"ショルダーバッグ"},{category_name:"トートバッグ"},{category_name:"ボストンバッグ"},{category_name:"リュック/バックパック"},
{category_name:"ウエストポーチ"},{category_name:"ボディバッグ"},{category_name:"ドラムバッグ"},{category_name:"ビジネスバッグ"},{category_name:"トラベルバッグ"},{category_name:"メッセンジャーバッグ"},{category_name:"エコバッグ"},{category_name:"その他"}])

men_suits.children.create([{category_name:"すべて"},{category_name:"スーツジャケット"},{category_name:"スーツベスト"},{category_name:"スラックス"},{category_name:"セットアップ"},{category_name:"その他"}])

men_hat.children.create([{category_name:"すべて"},{category_name:"キャップ"},{category_name:"ハット"},{category_name:"ニットキャップ/ビーニー"},{category_name:"ハンチング/ベレー帽"},{category_name:"キャスケット"},{category_name:"サンバイザー"},{category_name:"その他"}])

men_accessory.children.create([{category_name:"すべて"},{category_name:"ネックレス"},{category_name:"ブレスレット"},{category_name:"バングル/リスト"},{category_name:"リング"},{category_name:"ピアス(片耳用)"},{category_name:"ピアス(両耳用)"},
{category_name:"アンクレット"},{category_name:"その他"}])

men_goods.children.create([{category_name:"すべて"},{category_name:"長財布"},{category_name:"折り財布"},{category_name:"マネークリップ"},{category_name:"コインケース/小銭入れ"},{category_name:"名刺入れ/定期入れ"},{category_name:"キーケース"},
{category_name:"キーホルダー"},{category_name:"ネクタイ"},{category_name:"手袋"},{category_name:"ハンカチ"},{category_name:"ベルト"},{category_name:"マフラー"},{category_name:"ストール"},
{category_name:"バンダナ"},{category_name:"ネックウォーマー"},{category_name:"サスペンダー"},{category_name:"ウォレットチェーン"},{category_name:"サングラス/メガネ"},{category_name:"モバイルケース/カバー"},{category_name:"手帳"},
{category_name:"ストラップ"},{category_name:"ネクタイピン"},{category_name:"カフリンクス"},{category_name:"イヤマフラー"},{category_name:"傘"},
{category_name:"レインコート"},{category_name:"ミラー"},{category_name:"タバコグッズ"},{category_name:"その他"}])

men_watch.children.create([{category_name:"すべて"},{category_name:"腕時計(アナログ)"},{category_name:"腕時計(デジタル)"},{category_name:"ラバーベルト"},{category_name:"レザーベルト"},{category_name:"金属ベルト"},{category_name:"その他"}])

men_swimwear.children.create([{category_name:"すべて"},{category_name:"一般水着"},{category_name:"スポーツ用"},{category_name:"アクセサリー"},{category_name:"その他"}])

men_legwear.children.create([{category_name:"すべて"},{category_name:"ソックス"},{category_name:"スパッツ/レギンス"},{category_name:"レッグウォーマー"},{category_name:"その他"}])

men_underwear.children.create([{category_name:"すべて"},{category_name:"トランクス"},{category_name:"ボクサーパンツ"},{category_name:"その他"}])

men_other.children.create([{category_name:"すべて"}])

kid_girl_baby.children.create([{category_name:"すべて"},{category_name:"トップス"},{category_name:"アウター"},{category_name:"パンツ"},{category_name:"スカート"},{category_name:"ワンピース"},{category_name:"ベビードレス"},
{category_name:"おくるみ"},{category_name:"下着/肌着"},{category_name:"パジャマ"},{category_name:"ロンパース"},{category_name:"その他"}])

kid_boy_baby.children.create([{category_name:"すべて"},{category_name:"トップス"},{category_name:"アウター"},{category_name:"パンツ"},{category_name:"おくるみ"},{category_name:"下着/肌着"},{category_name:"パジャマ"},{category_name:"ロンパース"},{category_name:"その他"},])

kid_unisex_baby.children.create([{category_name:"すべて"},{category_name:"トップス"},{category_name:"アウター"},{category_name:"パンツ"},{category_name:"おくるみ"},{category_name:"下着/肌着"},{category_name:"パジャマ"},{category_name:"ロンパース"},{category_name:"その他"},])

kid_girl.children.create([{category_name:"すべて"},{category_name:"ジャケット/上着"},{category_name:"トップス(Tシャツ/カットソー)"},{category_name:"トップス(トレーナー)"},{category_name:"トップス(チュニック)"},{category_name:"トップス(タンクトップ)"},
{category_name:"トップス(その他)"},{category_name:"スカート"},{category_name:"パンツ"},{category_name:"ワンピース"},{category_name:"セットアップ"},{category_name:"パジャマ"},{category_name:"フォーマル/ドレス"},
{category_name:"和服"},{category_name:"浴衣"},{category_name:"甚平"},{category_name:"水着"},{category_name:"その他"}])

kid_boy.children.create([{category_name:"すべて"},{category_name:"ジャケット/上着"},{category_name:"トップス(Tシャツ/カットソー)"},{category_name:"トップス(トレーナー)"},
{category_name:"トップス(その他)"},{category_name:"パンツ"},{category_name:"セットアップ"},{category_name:"パジャマ"},{category_name:"フォーマル/ドレス"},
{category_name:"和服"},{category_name:"浴衣"},{category_name:"甚平"},{category_name:"水着"},{category_name:"その他"}])

kid_boy.children.create([{category_name:"すべて"},{category_name:"ジャケット/上着"},{category_name:"トップス(Tシャツ/カットソー)"},{category_name:"トップス(トレーナー)"},
{category_name:"トップス(その他)"},{category_name:"ボトムス"},{category_name:"パジャマ"},{category_name:"その他"}])

kid_shoes.children.create([{category_name:"すべて"},{category_name:"スニーカー"},{category_name:"サンダル"},{category_name:"ブーツ"},{category_name:"長靴"},{category_name:"その他"}])

kid_goods.children.create([{category_name:"すべて"},{category_name:"靴下/スパッツ"},{category_name:"帽子"},{category_name:"エプロン"},{category_name:"サスペンダー"},{category_name:"タイツ"},
{category_name:"ハンカチ"},{category_name:"バンダナ"},{category_name:"ベルト"},{category_name:"マフラー"},{category_name:"傘"},{category_name:"手袋"},{category_name:"スタイ"},{category_name:"バッグ"},{category_name:"その他"}])

kid_toilet.children.create([{category_name:"すべて"},{category_name:"おむつ用品"},{category_name:"おまる/補助便座"},{category_name:"トレーニングパンツ"},{category_name:"ベビーバス"},{category_name:"お風呂用品"},{category_name:"その他"}])

kid_outside.children.create([{category_name:"すべて"},{category_name:"ベビーカー"},{category_name:"抱っこひも/スリング"},{category_name:"チャイルドシート"},{category_name:"その他"}])

kid_meal.children.create([{category_name:"すべて"},{category_name:"ミルク"},{category_name:"ベビーフード"},{category_name:"ベビー用食器"},{category_name:"その他"}])

kid_home.children.create([{category_name:"すべて"},{category_name:"ベッド"},{category_name:"布団/毛布"},{category_name:"イス"},{category_name:"たんす"},{category_name:"その他"}])

kid_toy.children.create([{category_name:"すべて"},{category_name:"おふろのおもちゃ"},{category_name:"がらがら"},{category_name:"オルゴール"},{category_name:"ベビージム"},{category_name:"手押し車/カタカタ"},{category_name:"知育玩具"},{category_name:"その他"}])

kid_celebration.children.create([{category_name:"すべて"},{category_name:"お宮参り用品"},{category_name:"お食い始め用品"},{category_name:"アルバム"},{category_name:"手形/足形"},{category_name:"その他"}])

kid_other.children.create([{category_name:"すべて"},{category_name:"母子手帳用品"},{category_name:"その他"}])

life_kitchen.children.create([{category_name:"すべて"},{category_name:"食器"},{category_name:"調理器具"},{category_name:"収納/キッチン雑貨"},{category_name:"弁当用品"},
{category_name:"カラトリー(スプーン等)"},{category_name:"テーブル用品"},{category_name:"容器"},{category_name:"エプロン"},{category_name:"アルコールグッズ"},{category_name:"浄水器"},{category_name:"その他"}])

life_bed.children.create([{category_name:"すべて"},{category_name:"セミシングルベッド"},{category_name:"シングルベッド"},{category_name:"セミダブルベッド"},{category_name:"ダブルベッド"},
{category_name:"ワイドダブルベッド"},{category_name:"クィーンベッド"},{category_name:"キングベッド"},{category_name:"脚付きマットレスベッド"},{category_name:"マットレス"},{category_name:"すのこベッド"},
{category_name:"ロフトベッド/システムベッド"},{category_name:"簡易ベッド/折りたたみベッド"},{category_name:"収納つき"},{category_name:"その他"}])

life_sofa.children.create([{category_name:"すべて"},{category_name:"ソファセット"},{category_name:"シングルソファ"},{category_name:"ラブソファ"},{category_name:"トリプルソファ"},{category_name:"オットマン"},
{category_name:"コーナーソファ"},{category_name:"ビーズソファ/クッションソファ"},{category_name:"ローソファ/フロアソファ"},{category_name:"ソファベッド"},{category_name:"応接セット"},{category_name:"ソファカバー"},{category_name:"リクライニングソファ"},{category_name:"その他"}])

life_chair.children.create([{category_name:"すべて"},{category_name:"一般"},{category_name:"スツール"},{category_name:"ダイニングチェア"},{category_name:"ハイバックチェア"},{category_name:"ロッキングチェア"},
{category_name:"座椅子"},{category_name:"折り畳みイス"},{category_name:"デスクチェア"},{category_name:"その他"}])

life_table.children.create([{category_name:"すべて"},{category_name:"こたつ"},{category_name:"カウンターテーブル"},{category_name:"サイドテーブル"},{category_name:"センターテーブル"},{category_name:"ダイニングテーブル"},
{category_name:"座卓/ちゃぶ台"},{category_name:"アウトドア用"},{category_name:"パソコン用"},{category_name:"事務机/学習机"},{category_name:"その他"}])

life_storage.children.create([{category_name:"すべて"},{category_name:"リビング収納"},{category_name:"キッチン収納"},{category_name:"玄関/屋外収納"},{category_name:"バス/トイレ収納"},{category_name:"本収納"},
{category_name:"本/CD/DVD収納"},{category_name:"洋服タンス/押入れ収納"},{category_name:"電話台/ファックス台"},{category_name:"ドレッサー/鏡台"},{category_name:"棚/ラック"},{category_name:"ケース/ボックス"},{category_name:"その他"}])


life_mat.children.create([{category_name:"すべて"},{category_name:"ラグ"},{category_name:"カーペット"},{category_name:"ホットカーペット"},{category_name:"玄関/キッチンマット"},{category_name:"トイレ/バスマット"},{category_name:"その他"}])

life_curtain.children.create([{category_name:"すべて"},{category_name:"カーテン"},{category_name:"ブラインド"},{category_name:"ホットカーペット"},{category_name:"ロールスクリーン"},{category_name:"のれん"},{category_name:"その他"}])

life_illumination.children.create([{category_name:"すべて"},{category_name:"蛍光灯/電球"},{category_name:"天井照明"},{category_name:"フロアスタンド"},{category_name:"その他"}])




寝具
すべて

布団/毛布

枕

シーツ/カバー

その他


すべて

ごみ箱

ウェルカムボード

オルゴール

クッション

クッションカバー

スリッパラック

ティッシュボックス

バスケット/かご

フォトフレーム

マガジンラック

モビール

花瓶

灰皿

傘立て

小物入れ

置時計

掛時計/柱時計

鏡(立て掛け式)

鏡(壁掛け式)

置物

風鈴

植物/観葉植物

その他


すべて

正月

成人式

バレンタインデー

ひな祭り

子どもの日

母の日

父の日

サマーギフト/お中元

夏/夏休み

ハロウィン

敬老の日

七五三

お歳暮

クリスマス

冬一般

その他

その他
すべて