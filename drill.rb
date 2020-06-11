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

# unless文
# a = 3
# b = 2
# unless a + b <= 0
#   puts "計算結果は0より大きいです"
# end 

# fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500, ]]]
# fruits_price.each do |key, values|
#   sum_price = 0
#   values.each do |price|
#     sum_price += price
#   end
  
#   puts "#{key}の合計金額は#{sum_price}円です"
# end

# fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500, ]]]
# fruits_price.each do |fruit|
#   sum = 0
#   fruit[1].each do |price|
#     sum += price
#   end

#   puts "#{fruit[0]}の合計金額は#{sum}円です"
# end

# aが100以上の時は処理が終了するコード
# a = 0
# while a < 100 do
#   puts a
#   a += 1
# end
# a = 0
# while true do
#   puts a
#   a += 1
#   break if a >= 100
# end

# 文字列を数字に変換するメソッド to_i
# str = "1"
# puts str.to_i

# array = ["dog", "cat", "something"]
# array.pop
# puts array

# attr_readerメソッド
# class Book
#   attr_reader :title, :price

#   def initialize(title, price)
#     @title = title
#     @price = price
#   end
# end

# book = Book.new('プロを目指すためのRuby入門', '3000')
# puts book.title 

# input = [3, 5, 9, 12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]

# def search(target_num, input)
#   input.each_with_index do |num, index|
#     if num == target_num
#       puts "その数字は#{index+1}番目にあります"
#       return
#     end
#   end
#   puts "その数は含まれません"
# end

# search(62, input)

# 三項演算子
# 条件式 ? 真の時の値 : 偽の時の値
# 条件式を判定し、trueだった時は 「真の時の値」を、falseだった時は「偽の時の値」を返す。条件や帰りちがシンプルな場合、if文よりも簡潔に記述できる。
# var = 12345

# if var.class == String
#   m = "varはStringです"
# else
#   m = "varはStringではありません"
# end

# puts m
# # 書き換え
# var.class == String ? m = "varはStringです" : m = "varはStringではありません"
# puts m

# ワンライナー
# user_data = [
#   {
#     user: {
#       profile: {
#         name: 'George'
#       }
#     }
#   },
#   {
#     user: {
#       profile: {
#         name: 'Alice'
#       }
#     }
#   },
#   {
#     user: {
#       profile: {
#         name: 'Taro'
#       }
#     }
#   }
# ]

# user_data.each do |u|
#   puts u[:user][:profile][:name]
# end

# user_data.each{ |u| puts u.dig(:user, :profile, :name) }

# namespaceを使用したルーティング
# namespace :admin do
#   namespace :users do
#     resources :tweets, only[:index]
#   end
# end
# 上記のルーティングで生成されるURL
# /admin/users/tweets

# 引数のヴァリエーション
# array = [1, 2, 3, 4, 5].map do |el|
#   if el.odd?
#     el
#   end
# end.compact!

# puts array

# map {||...} 各要素に対してブロックを評価した結果をあうべて含む配列を返します。
# ブロックを省略した場合、上で説明した繰り返しを実行し、その結果として得られる配列を返すようなEnumeratorオブジェクトを返します。
# odd?  自身が奇数であれば真を返し、そうでない場合は偽を返す。
# compact! 自身からnilを取り除いた配列を生成して返す。

# array = [1, 2, 3, 4, 5].map { |el| el if el.odd? }.compact!
# puts array
# array = (1..5).to_a.delete_if { |el| el.even? }
# puts array

# # to_a selfを返す
# # even 自身が偶数であれば真を返し、そうでない場合は偽を返す。

# array = (1..5).to_a.delete_if(&:even?)
# puts array
# array =[1, 2, 3, 4, 5].select{ |el| el.odd? }
# puts array

# fizzbuzz応用
# def fizzbuzz(max_num)

#   (1..max_num).each do |num|
#     if num % 15 == 0
#       puts "FizzBuzz"
#     elsif num % 5 == 0
#       puts "Buzz"
#     elsif num % 3 == 0
#       puts "Fizz"
#     else
#       puts num
#     end
#   end
# end

# puts 'いくつまで数えますか？'
# num = gets.to_i
# fizzbuzz(num)

# Rails ビューの基本概念
# Railsにはアセットパイプラインという仕組みが用意されており、複数のCSSやJavaScriptファイルは一つにまとめて圧縮される。この機能はSprocketsというGemがになっている。
# 各ビューが読み込まれる際、必ずapplication.html.erbが読み込まれる。その中にstylesheet_link_tagの記述があり、それによって
# app/assets/stylesheets/application.cssが呼び出される。
# application.cssはマニフェストファイルと言われ、このファイルから各CSSファイルを呼び出す仕組みになっている。
# JavaScriptも同様。

# 上記を踏まえると、作成したcssやJavaScriptのファイルはどこに配置すれば良いか
# css app/asshets/stylesheetsのフォルダ内
# JavaScript app/asshets/JavaScriptsのフォルダ内

# シーザー暗号を出力するコードの作成
# ord 文字列の最初の文字の文字コードを整数で返す。
# chr selfを文字コードと見た時、それに対応する一文字からなる文字列を返します。
# join 連結 引数がある場合はその引数を用いて連結する。

# char = "frqjudwxodwlrq"
# char_ary = char.split("")
# changed_char_ary = []

# char_ary.each do |char|
#   changed_char_ary << (char.ord - 3).chr
# end

# puts changed_char_ary.join

# 動的なクラス名の定義
# class クラス名 end という記述を用いないでTweetというクラスを定義する
# var = 'hogehoge'
# Tweet = class.new do
#   ブロックの内部で各種メソッドを定義(varを呼び出すことができる)
# end
# # メリット1 ブロックの外の変数が呼び出せる
# class Product
#   def self.create_new_class(class_name)
#     # メリット2 引数の値に応じて、クラスを作成する
#     self.class.const_set :'#{class_name}', Class.new
#   end
# end

# モデルへのメソッド記載
# ユーザーが入力した値に対して自動で消費税額8%を加算してからデータベースに保存
# class Product < ApplicationRecord
#   def add_tax
#     self.price = (price * 1.08).round
#   end
# end
# class productsController < ApplicationController
#   def create
#   @product = Product.new(product_params)
#   @procuct.add_tax

#   respond_to do |format|
#     if @product.save
#       format.html {redirect_to @product, notice: 'Product was successfully created.' }
#       format.json {render :show, status: :created, location: @product }
#     else
#       format.html {render :new}
#       format.json {render json: @product.errors, status: :unprocessable_entity }
#     end
#   end
# end

# renderの記載について
# [A]
# @users = User.all
# @users.each do |user|
#   = render 'user', user: user

# [B]
# @users = User.all
#   = render 'user', users: @users

# [B]の方が好まれる。
# [B]の方が処理が早いため。
# [A]では、@usersにeachを利用して、user一人一人に対してrenderを実行。
# この書き方だと、userが100人いると100回、50000人いると50000回、どの部分テンプレートを利用するのか探しにいく処理が実行されるため、ユーザーが多くなれば多くなるほどパフォーマンスが低下していく。
# 一方、[B]では、renderする際の変数に@usersを渡しています。この書き方だと、どのテンプレートを利用するのか探しにいく処理は一度しか実行されないため、[A]より高速にビューを描画することができます。
# なお、render @users と省略することも可能です。

# resourcesとresourceの差異について
# ・idつきのパスが生成されない。show, editアクションの実行に、idがが必要ない場合に有効。
# ・indexアクション用のルーティングが生成されない。
# （例）
# resource :users
# 生成されるルーティング
# new_users GET      /users/new(.:format)    users#new
# edit_users GET     /users/edit(.:format)    users#edit
#      users GET     /users(.:format)        users#show
#            PATCH   /users(.:format)        users#update
#            PUT     /users(.:format)        users#update
#            DELETE  /users(.:format)        users#destroy
#            POST    /users(.:format)        users#create


