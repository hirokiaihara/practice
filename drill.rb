# day1
# RubyとRnby on Railsの特徴

# Rubyの特徴
# スクリプト言語である。
# プログラミング言語にはコンパイラ言語とスクリプト言語の部類がある。
# コードを機械が実行するには翻訳を行う必要があるが、コンパイラ言語は事前に全て翻訳する。
# スクリプト言語は随時翻訳しつつ実行する。
# オブジェクト指向言語である。
# 変更に強く、再利用しやすいコードが書きやすい。
# 上記の理由から、Rubyは記述量が少なくすみ、コンパイルの時間がかからないなど生産性が高いという特徴がある。
# フレームワークのRailsと合わせて、短期間でプロダクト開発を進める事ができる。

# Railsの特徴
# 開発を効率化するための仕組みが多数用意されている為、生産性が高い。
# Railsは。rails newするだけでアプリの雛形を作成出来たり、ActiveRecordによってSQL操作ができるなど、開発効率を高めてくれる仕組みが標準で組み込まれています。

# ルートディレクトリ
# 階層構造の最上位にあるディレクトリ。$ cd /
# ホームディレクトリ
# 各ユーザーに割り当てられたディレクトリ。$ cd もしくは $ cd ~
# 絶対パス ~/Desktop/text
# 相対パス text

# (1) "Today" " is" " sunny" を "Today is sunny" にする。
# puts "Today" + " is" + " sunny"
# # (2) "Ruby, Rails, JavaScript" を ["Ruby", " Rails", " JavaScript"] に変換する。
# p "Ruby,Rails,JavaScript".split(",")
# # (3) "rails" を "Rails" に変換する。
# puts "rails".capitalize
# # (4) "abcde" を "edcba"　に変換する。
# puts "abcde".reverse
# # (5) "Hello, world" を "HELLO, WORLD" に変換する。
# puts "Hello, World".upcase
# # (6) 「square」メソッドを定義し、引数で渡された整数を２乗した結果を返すコード
# # (7) 上記のメソッドの「外側」にコードを追加し、実行した時に下記の文字列が表示
# # <変数side_length に5を代入した場合>「１辺が5センチの正方形の面積は25c㎡です」
# # <変数side_length に7を代入した場合>「１辺が7センチの正方形の面積は49c㎡です」
# def squere(length)
#   length**2
# end
# side_length = 5
# puts "1辺が#{side_length}センチの正方形の面積は#{squere(side_length)}㎠です"
# side_length = 7
# puts "1辺が#{side_length}センチの正方形の面積は#{squere(side_length)}㎠です"

# day2
# メソッド定義
# def post_review(a_posts)
#   # 変数定義
#   post = {}
#   puts "ジャンルを入力してください："
#   post[:genre] = gets.chomp
#   puts "タイトルを入力してください："
#   post[:title] = gets.chomp
#   puts "感想を入力してください："
#   post[:review] = gets.chomp
#   line = "-------------------------"

#   #レビューの描画
#   puts "ジャンル：#{post[:genre]}\n#{line}"
#   puts "タイトル：#{post[:title]}\n#{line}"
#   puts "感想：#{post[:review]}\n#{line}"

#   a_posts << post
#   return a_posts
# end

# def read_reviews(a_posts)
#   # リスト表示
#   number = 0
#   a_posts.each do |post|
#     puts "[#{number}]:#{post[:title]}のレビュー"
#     number +=1
#   end

#   puts "\nみたいレビューの番号を入力してください："
#   input = gets.to_i

#   # レビューの取得
#   post = a_posts[input]
#   # レビューの描画
#   line = "---------------------------"
#   puts "ジャンル：#{post[:genre]}\n#{line}"
#   puts "タイトル：#{post[:title]}\n#{line}"
#   puts "感想：#{post[:review]}\n#{line}"
# end

# def end_program
#   exit
# end

# def expection
#   puts "入力された値は無効な値です"
# end

# posts = []

# while true do
#   #メニュー表示
#   puts "レビュー数：#{posts.length}"
#   puts "[0]レビューを書く"
#   puts "[1]レビューを読む"
#   puts "[2]アプリを終了する"
#   input = gets.to_i

#   if input == 0 then
#     posts = post_review(posts)
#   elsif input == 1 then
#     read_reviews(posts)
#   elsif input == 2 then
#     end_program
#   else
#     exception
#   end
# end
  
# day3
# Rubyコード記述
# hash = {}
# hash[:name]="Suzuki"
# hash[:height]=1.6
# hash[:weight]=60
# hash[:bmi]= (hash[:weight]/hash[:height]**2).round(1)
# puts "name:#{hash[:name]}"
# puts "height:#{hash[:height]}"
# puts "weight:#{hash[:weight]}"
# puts "bmi:#{hash[:bmi]}"

# day4
# スコープの概念

# def rename(name)
#   name = "Mr.#{name}"
# end

# name = "Tanaka"
# rename(name)
# puts name

# 上記のコードがうまく動作しない理由
# 多くのプログラミング言語にはスコープという概念がある。スコープ外の変数にはアクセスできない。
# Rubyではメソッドのうちと外ではスコープが違う。
# そのためdefの中のnameと外のnameは別物であり、renameメソッドの中のnameへの代入は外のnameに反映されない。
# 以下修正。

# def rename(name)
#   name = "Mr.#{name}"
# end

# name = "Tanaka"
# # renameメソッドの返り値をnameに再代入する
# name = rename(name)
# puts name

# day5
# ブロック要素とインライン要素
# ブロック要素：見出し・段落などのブロックとしてページ全体のレイアウトを行うための要素
# インライン要素：ブロック要素の中身、文書の一部を装飾する時などに使用する。
# classセレクタとidセレクタ
# class：種別名を割り当てる。1ページ中に複数存在する。
# id：固有の名前を割り当てる。同じid名は1ページ中に1つ。
# リセットcss
# ブラウザがもともと持っているcssを打ち消すスタイル。
# 異なるブラウザ間で同じ見え方にする。
# 要素横並び
# float: left;
# display: flex;
# display: inline-block;
# display: inline;
# webフォント
# webサーバー上で提供されているフォントファイルのこと。どの端末からアクセスした時でも、同じフォントを表示させる事ができる。

#day6
# RailsにおけるORMとは？
# 直接SQL文を書く代わりに非常に短いコードで、データベースの読み書きを行える機能。
# RailsではActiveRecordというモジュールで実装されている。

# database.ymlファイルの主な役割
# rake db:createのコマンドを実行した時に作成されるデータベースの名称を指定する。
# RailsアプリケーションがSQLサーバーにアクセスする時のソケットファイルの位置を指定する。

# 一つの記事に複数の画像を投稿できるアプリを作る。その時のテーブル設計として、articlesテーブルに、picture1, picture2, picture3というカラムは作成しない理由。
# <理由1> ４枚以上の画像を保存するよう仕様が変わった場合、カラムを追加しなくてはならないなど柔軟性にかける為。
# <理由2> 1枚しか画像を保存しないレコードの場合、データベースに無駄が生じてしまう為。
# <正しい設計> pocturesテーブルを作成し、画像はそこに保存する。articlesテーブルとのアソシエーsyアソシエーションを設定し、記事と画像を関連づける。

# Rails問題
# Tweet.find(1)を実行した時に、findメソッドを使用できる理由
# rails g model tweetのコマンドを実行するとTweetクラスが作成されるが、そのTweetクラスはActiveRecord::Baseを継承している。
# その為、Tweetクラスのインスタンスに対して、ActiveRecord::Baseで定義されているメソッドを使用することが出来る。
# Railsにおけるアソシエーションとは？MVCのどこに含まれるのか?
# DBのテーブルとテーブルを紐づけることによって、関連するデータの読み書きを容易にするための機能。MVCのモデルに含まれる。

# application.html.erbの役割と使い方
# デフォルトでは、全てのビューが読み込まれる時にapplication.html.erbが読み込まれる。そのため、ヘッダーやフッターなど共通で表示させたい内容をここに記述する。
# form_withの特徴
# form_withで自動でパスを選択してくれて、HTTPメソッドを指定する必要がない。
# コントローラーから渡された、ActiveRecordを継承するモデルのインスタンスが利用できる。
# form_withではinputタグは用いない
# Railsにおいてhtmlファイルでlinkタグを記述してcssを読み込まなくても良い理由
# application.html.erbにstylesheet_link_tag 'application'という記述があるため、app/aseete/stylesheets/application.cssが読み込まれる。
# application.cssにあるrequire tree. という記述により、同じフォルダにあるcssファイルの全てが読み込まれる。

# MassAssignmentの脆弱性をつく攻撃
# フォームが送信するparamsの内容を改ざんするなどして、開発者が意図していないデータをDBに保存させる攻撃。
# Chromeを使った攻撃の手順
# 検証ツールを開き、テキストフィールドのフォームを選択する。表示されたHTMLタグのname属性の内容を変更する。
# 例えば、あるテーブルにadminカラムがあり、そこに1というフラグが立っていたら管理者だという設計になっていたとします。
# 上記の手順でparamsのキーは変更できてしまうので、本来はimageカラムに保存すべき内容をadminカラムに保存させることができます。
# その為、テキストフィールドに1と入力すれば管理者に成り済ますことができてしまします。
# このように、悪意を持ってキーを書き換えたとしても、想定しているキー以外は弾く仕組みがストロングパラメーターです。

# Ruby問題
# str = "is this a pen?"
# if str.include?("?")
#   puts "yes, it is."
# end
# 上記をワンライナーに書き換え
# str = "is this a pen?"
# puts "yes, it is." if str.include?("?")

# 1から100まで数を数える、3の倍数なら「fizz」、5の倍数なら「buzz」、15の倍数なら「fizzbuzz」それ以外はその数を答える。
# num = 1
# while num < 101
#   str = ""
#   if num % 3 == 0
#     str = str + "fizz"
#   end

#   if num % 5 == 0
#     str =  str + "buzz"
#   end

#   if str == ""
#     str = str + num.to_s
#   end

#   puts str
#   num += 1
# end

# class Article

#   def initialize(author, title, content)
#     @author = author
#     @title = title
#     @content = content
#   end

#   def author
#     @author
#   end

#   def title
#     @title
#   end

#   def content
#     @content
#   end
# end

# article = Article.new('阿部', 'Rubyの素晴らしさについて', 'Awesome Ruby')
# puts "著者: #{article.author}"
# puts "タイトル: #{article.title}"
# puts "本文: #{article.content}"

# 配列からキーだけ取り出すメソッド
# attr = {name: "田中", age: 27, height: 180, weight: 75}
# str = attr.keys
# puts str

# 対話型インターフェース 2桁以上の整数を入力すると十の位と一の位の数字に対して、足す、掛けるを行い、最後にそれぞれの結果を足し合わせて出力するプログラム

# def addition(a, b)
#   a + b
# end

# def multiplication(a, b)
#   a * b
# end

# def slice_num(num)
#   tens_place = (num / 10) % 10
#   ones_place = (num / 1) % 10
#   return tens_place, ones_place
# end

# puts "二桁の整数を入力してください"
# input = gets.to_i
# x, y = slice_num(input)
# add_result = addition(x, y)
# multipul_result = multiplication(x, y)
# puts "足算結果と掛け算結果の合計値は#{add_result + multipul_result}です"
# while文をfor文に書き直し
# num = 0
# while num < 100 do
#   puts num
#   num += 1
# end

# for num in 0..99 do
#   puts num
# end

# クラスの継承
# あるクラスの特徴を引き継いで、新しいクラスを定義すること
# メリット
# よく似た定義のクラスが複数ある際に、共通の特徴をまとめるのに役立ちます。
# 例えば、野菜を表すVegitableクラス、肉を表すMeatクラス、魚を表すFishクラスを定義したい場合に、食べ物として共通の特徴をFoodクラスにまとめて定義しておき
# 先の3クラスではFoodクラスを継承するといったケース。
# 継承を用いることによって、同じ特徴の定義を何回も書く必要がなくなり、親クラスにまとめることが可能になります。
# 実装方法
# class 小クラス名 < 親クラス名 と記述することで継承を表現。
# class Meat < Food
#   ここにMeatクラス特有の特徴を記述する
# end

# ハッシュから値だけを取り出す。
# attr = {name: "田中", age: 27, height: 180, weight: 75}
# hoge = attr.values
# puts hoge
# values = []
# huga = attr.each do |key, value|
#   values << value
# end
# puts values

# whereメソッドとfind_byメソッドの違い
# 両メソッドには取得してくるレコードの件数に違いがあります。
# whereメソッドが条件に合うレコードを全て取得してくるのに対し、
# find_byメソッドは条件に合うレコードのうち、最初のレコード(idの値が小さいもの)1件だけを取得してきます。

# day7
# 曜日の取得
# require "date"

# day = Date.today.wday
# days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]

# if day == 5
#   puts "今日は#{days[day]}だ！！！"
# else
#   puts "今日は#{days[day]}"
# end


