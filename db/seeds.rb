#!/bin/env ruby
# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', ja_name: '', city: cities.first)


Venue.delete_all
Event.delete_all
Musician.delete_all

@fiat = Venue.create(
  :name => "Fiat Space",
  :access_url => "http://fiatcaffe.jp/access",
  :main_url		=> "http://fiatcaffe.jp",
  :address		=> "１丁目-４−５ Kitaaoyama, Minato, Tokyo")
@fiat.translations.create(:name => "フィアット　スペース", :address => "１丁目-４−５ Kitaaoyama, Minato, Tokyo", :locale => "ja")

@mike = Musician.create(
  :name 				=> "Mike Zachernuk",
  :member 			=> 1,
  :url					=> "http://www.myspace.com/mikezachernuk",
  :instrument		=> "tp")
@mike.translations.create(:name => "マイクザッチャーナック", :locale => "ja")

@paul = Musician.create(
     :name 				=> "Paul Dwyer",
     :member 			=> 1,
     :url					=> "http://www.myspace.com/pauldwyerbass",
     :instrument		=> "b")
@paul.translations.create(:name => "Paul Dwyer", :locale => "ja")

@yusuke = Musician.create(
       :name 				=> "Yusuke Toyama",
       :member 			=> 1,
       :url					=> "http://www.dancingbus.com",
       :instrument		=> "dr")
@yusuke.translations.create(:name => "戸山 雄介", :locale => "ja")

@jun = Musician.create(
    :name 				=> "Jun Satsuma",
    :member 			=> 1,
    :url					=> "http://junsatsuma.com",
    :instrument		=> "gt")
@jun.translations.create(:name => "佐津間純", :locale => "ja")

@ron = Musician.create(
    :name 				=> "Ron Freund",
    :member 			=> 0,
    :url					=> "http://tapdance.co.il/EN/",
    :instrument		=> "tap")
@ron.translations.create(:name => "Ron Freund", :locale => "ja")

@shingo = Musician.create(
       :name 				=> "Shingo Yamaguchi",
       :member 			=> 1,
       :url					=> "http://www.shingoyamaguchi.com",
       :instrument		=> "dr")
@shingo.translations.create(:name => "山口新語", :locale => "ja")

@e = Event.new(
               :name		=> "Isaac's Sayonara",
               :start_date 	=> "Thursday, May 16, 2013, 7:30pm +0900",
               :end_date 		=> "Thursday, May 16, 2013, 11pm +0900")
@e.venue = @fiat
@e.info_url = "/static_pages/fiat"
@e.musicians << @mike << @paul << @shingo << @jun << @ron
@e.save
@e.translations.create(:locale => "ja", :name => "アイザックの送別会ライブ")

@fiat_event = Event.new(
     :name		=> "Fiat Swing",
     :start_date 	=> "Thursday, Nov 19, 2012 7:30pm +0900",
     :end_date 		=> "Thursday, Nov 19, 2012 11pm +0900")
@fiat_event.venue = @fiat
@fiat_event.info_url = "/static_pages/fiat"
@fiat_event.musicians << @mike << @paul << @yusuke
@fiat_event.save
@fiat_event.translations.create(:locale => "ja", :name => "Fiat Swing")

@biervana = Venue.create(
      :name => "Biervana",
      :access_url => "http://www.biervana.com/access",
      :main_url		=> "http://www.biervana.com",
      :address		=> "Prudential Tower 1F, 2-13-10 Nagatacho Chiyoda-ku, Tokyo")
@biervana.translations.create(:locale => "ja", :name => "赤坂のBierVana", :address => "東京と千代田区永田町２−１３−１０")

@yanoo = Musician.create(
      :name 				=> "Yanoo Tadashi from Aozora Romance Band",
      :member 			=> 0,
      :url					=> "",
      :instrument		=> "gt")
@yanoo.translations.create(:locale => "ja", :name => "青空ロマンス楽団の矢野忠")

@yuko = Musician.create(
     :name 				=> "Yuko Sumi",
     :member 			=> 0,
     :url					=> "",
     :instrument		=> "as")
@yuko.translations.create(:locale => "ja", :name => "青空ロマンス楽団の角 裕子")

@biervana_event = Event.new(
         :name		=> "Beer and Swing",
         :start_date 	=> "Monday, Jul. 16, 2012 7pm +0900",
         :end_date 		=> "Monday, Jul. 16, 2012 10:30pm +0900",
         :description  => "In Akasaka, Y1500,<br>Beginner Lesson at 9pm")
@biervana_event.venue = @biervana
@biervana_event.info_url = "static_pages/biervana"
@biervana_event.musicians << @mike << @paul << @shingo << @yanoo << @yuko
@biervana_event.save
@biervana_event.translations.create(:locale => "ja", :name => "Beer & Swing", :description => "２５００円　（１d)")

@biervana_event = Event.new(
         :name		=> "Beer and Swing",
         :start_date 	=> "Saturday, Jun. 23, 2012 7pm +0900",
         :end_date 		=> "Saturday, Jun. 23, 2012 10:30pm +0900",
         :description  => "In Akasaka, Y1500<br>Beginner Lesson at 9pm")
@biervana_event.venue = @biervana
@biervana_event.info_url = "static_pages/biervana"
@biervana_event.musicians << @mike << @paul << @shingo
@biervana_event.save
@biervana_event.translations.create(:locale => "ja", :name => "Beer & Swing", :description => "２５００円　（１d)")

#@f2 = @fiat_event.create_duplicate
#@f2.start_date = "Thursday, Apr. 26, 2012 7:30pm +0900"
#@f2.end_date = "Thursday, Apr. 26, 2012 11pm +0900"
#@f2.musicians.delete_all
#@f2.musicians << @mike << @paul << @shingo
#@f2.save

@lulu = Musician.create(
     :name 				=> "Lulu Galore",
     :member 			=> 0,
     :url					=> "http://www.lulugalore.com",
     :instrument		=> "v")
@lulu.translations.create(:locale => "ja", :name => "Lulu Galore")

@peter = Musician.create(
      :name 				=> "Peter Vawter",
      :member 			=> 1,
      :url					=> "http://www.twitter.com/petervawter",
      :instrument		=> "vl")
@peter.translations.create(:locale => "ja", :name => "Peter Vawter")

@satomi = Musician.create(
       :name 				=> "Satomi Toma",
       :member 			=> 0,
       :url					=> "http://blog.livedoor.jp/satojazz/",
       :instrument		=> "tap")
@satomi.translations.create(:locale => "ja", :name => "當間里美")

@jw = Musician.create(
   :name 				=> "Joe Wagner",
   :member 			=> 0,
   :url					=> "",
   :instrument		=> "ts")
@jw.translations.create(:locale => "ja", :name => "Joe Wagner")

@seoul = Venue.create(
   :name => "Seoul",
   :access_url => "",
   :main_url		=> "http://www.campswingit.com",
   :address		=> "Seoul, Korea")
@seoul.translations.create(:locale => "ja", :name => "韓国ソウル", :address => "韓国ソウル")

@beijing = Venue.create(
     :name => "Bejing",
     :access_url => "",
     :main_url		=> "http://www.greatwallswingout.com",
     :address		=> "Bejing, China")
@beijing.translations.create(:locale => "ja", :name => "中国北京", :address => "中国北京")

@hk = Venue.create(
                   :name => "Hong Kong",
                   :access_url => "",
                   :main_url		=> "http://www.hongkongswingfestival.com",
                   :address		=> "Hong Kong")
@hk.translations.create(:locale => "ja", :name => "香港", :address => "香港")

@e = Event.new(
               :name		=> "Great Wall Swing Out",
               :start_date 	=> "April 13, 2012",
               :end_date 		=> "April 15, 2012",
               :description  => "")
@e.venue = @beijing
@e.info_url = "http://www.greatwallswingout.com"
@e.musicians << @lulu
@e.save
@e.translations.create(:locale => "ja", :name => "Great Wall Swing Out", :description => "")

@e = Event.new(
               :name		=> "Camp Swing It, 2012",
               :start_date 	=> "April 6, 2012",
               :end_date 		=> "April 8, 2012",
               :description  => "")
@e.venue = @seoul
@e.info_url = "http://www.campswingit.com"
@e.musicians << @mike << @peter << @yusuke << @paul
@e.save
@e.translations.create(:locale => "ja", :name => "Camp Swing It, 2012", :description => "")

@dancing_bus_roppongi = Venue.create(
                  :name => "Dancing Bus in Roppongi",
                  :access_url => "",
                  :main_url		=> "http://www.dancingbus.com",
                  :address		=> "Roppongi, Tokyo")
@dancing_bus_roppongi.translations.create(:locale => "ja", :name => "Dancing Bus 六本木", :address => "六本木")

@e = Event.new(
               :name		=> "Swing Fever by Dancing Bus",
               :start_date 	=> "Sunday, Jan. 29, 2012, 6pm +0900",
               :end_date 		=> "Sunday, Jan. 29, 2012, 10pm +0900",
               :description  => "")
@e.venue = @dancing_bus_roppongi
@e.info_url = "http://www.dancingbus.com"
@e.musicians << @jw << @yusuke << @paul
@e.save
@e.translations.create(:locale => "ja", :name => "Swing Fever by Dancing Bus", :description => "")

@e = Event.new(
               :name		=> "Hong Kong Swing Festival, 2012",
               :start_date 	=> "Jan 13, 2012",
               :end_date 		=> "Jan 19, 2012",
               :description  => "")
@e.venue = @hk
@e.info_url = "http://www.hkswingfestival.com"
@e.musicians << @peter << @paul
@e.save
@e.translations.create(:locale => "ja", :name => "香港スゥイング　フェスティバル", :description => "")

@e = Event.new(
               :name		=> "Camp Swing It, 2011",
               :start_date 	=> "March 25, 2011",
               :end_date 		=> "March 27, 2011",
               :description  => "")
@e.venue = @seoul
@e.info_url = "http://www.campswingit.com"
@e.musicians << @mike << @peter << @yusuke << @paul << @satomi
@e.save
@e.translations.create(:locale => "ja", :name => "Camp Swing It, 2011", :description => "")

@taproom = Venue.create(
     :name => "Nakameguro Tap Room",
     :access_url => "",
     :main_url		=> "http://bairdbeer.com/en/taproom/nakameguro-taproom",
     :address		=> "Nakameguro")
@taproom.translations.create(:locale => "ja", :name => "中目黒タップルーム", :address => "中目黒")

@e = Event.new(
               :name		=> "Beer & Swing",
               :start_date 	=> "Sunday, Dec. 26, 2010 5pm +0900",
               :end_date 		=> "Sunday, Dec. 26, 2010 9pm +0900",
               :description  => "No cover")
@e.venue = @taproom
@e.info_url = ""
@e.musicians << @mike << @yusuke << @paul
@e.save
@e.translations.create(:locale => "ja", :name => "Beer & Swing", :description => "")

@fccj = Venue.create(
  :name     => "Foreign Correspondents Club Japan",
  :main_url => "http://fccj.ne.jp",
  :address  => "Yurakucho 1-7-1, Chiyoda-ku, Tokyo"
  )
@fccj.translations.create(:locale => "ja", :name => "特例社団法人日本外国特派員協会", :address => "Yurakucho 1-7-1, Chiyoda-ku, Tokyo")

@e = Event.new(
               :name		=> "Swing for the Foreign Press",
               :start_date 	=> "Saturday, June 12, 2010 7pm +0900",
               :end_date 		=> "Saturday, June 12, 2010 9pm +0900",
               :description  => "No cover")
@e.venue = @fccj
@e.info_url = ""
@e.musicians << @mike << @yusuke << @paul
@e.save
@e.translations.create(:locale => "ja", :name => "Swing for the Foreign Press", :description => "")


#/** Jazz Data */
# TODO Translated name
clubs = [
         {name: 'Blue Note', ja_name: 'ブルーノート東京', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '〒107-0062 東京都港区南青山6-3-16 ライカビル', mapsQuery: '東京都港区南青山6-3-16', main_url: 'http://www.bluenote.co.jp/', notes: '', geoX: 35.661197, geoY: 139.716226},
         {name: 'Cotton Club', ja_name: 'コットンクラブジャパン', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '〒100-6402 東京都千代田区丸の内2-7-3 東京ビルTOKIA 2F', mapsquery: '東京都千代田区丸の内2-7-3', main_url: 'http://www.cottonclubjapan.co.jp/', notes: '', geox: 35.680085, geoy: 139.764678},
         {name: 'Half Tone', ja_name: 'ハーフトーン立川', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 1, gigged: 0, address: '立川市錦町１－２－５　２Ｆ', mapsquery: '立川市錦町１－２－５', main_url: 'http://www007.upp.so-net.ne.jp/halftone/', notes: '', geox: 35.697343, geoy: 139.416353},
         {name: 'Jesse James Club', ja_name: 'ジェシー・ジェイムス立川店', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '〒１９０－００１２　　　東京都　立川市　曙町２－１１－７　立川リージェントビルＢ１Ｆ', mapsquery: '東京都　立川市　曙町２－１１－７', main_url: 'http://homepage2.nifty.com/jessejames-tachikawa/', notes: '', geox: 35.700077, geoy: 139.415105},
         {name: 'Ko-ko', ja_name: '渋谷KOKO', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '150-0043東京都渋谷区 道玄坂2-26-5ひまわりビル2F', mapsquery: '東京都渋谷区道玄坂2-26-5', main_url: 'http://www3.point.ne.jp/~ko-ko/', notes: 'Favourite Jam House', geox: 35.659359, geoy: 139.697125},
         {name: 'Manhattan', ja_name: 'マンハッタン阿佐ヶ谷', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 1, gigged: 0, address: '東京都杉並区阿佐ヶ谷北2-2-7喜楽ビル3F', main_url: 'http://www.ateliermw.com/manhattan/', notes: '', geox: 35.705051, geoy: 139.634916},
         {name: 'First Stage', ja_name: 'ファーストステージ六本木', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 1, gigged: 0, address: '六本木　３－１５－２１', mapsquery: '六本木　３－１５－２１', main_url: 'http://www2.odn.ne.jp/firststage/', notes: '', geox: 35.662237, geoy: 139.735298},
         {name: 'Gate One', ja_name: 'ゲートワン', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 1, gigged: 0, address: '新宿区高田馬場２－８－３　丸石ビル東館Ｂ１', mapsquery: '新宿区高田馬場２－８－３', main_url: 'http://www.h3.dion.ne.jp/~gateone/', notes: '', geox: 35.712109, geoy: 139.708604},
         {name: 'Bar Jazzy', ja_name: 'バージャジー', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 0, gigged: 1, address: '中央区日本橋馬喰町 1-8-8　森忠ビルB1F', mapsquery: '中央区日本橋馬喰町 1-8-8', main_url: 'http://homepage1.nifty.com/barjazzy/', notes: '', geox: 35.694045, geoy: 139.782084},
         {name: 'Kinnostubo', ja_name: 'きんのつぼ', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 0, gigged: 1, address: '東京都世田谷区用賀2-36-13第二鎌田ビルB1 東急田園都市線用賀駅東口徒歩1分', mapsquery: '世田谷区用賀２丁目３６−１３', main_url: 'http://www.kinsmc.com/kinnotsubo/', notes: '', geox: 35.627403, geoy: 139.635615},
         {name: 'Pit-Inn', ja_name: 'ピットイン', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '新宿区新宿2-12-4アコード新宿B1', mapsquery: '新宿区新宿2-12', main_url: 'http://www.pit-inn.com/', notes: 'Best club for Japanese musicians', geox: 35.690572, geoy: 139.707676},
         {name: 'Someday', ja_name: 'Someday', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '〒105-0003 東京都港区西新橋1-20-9第５須賀ビルB1', mapsquery: '東京都港区西新橋1-20-9', main_url: 'http://someday.net/', notes: '', geox: 35.667702, geoy: 139.752412},
         {name: 'Jazz Spot J', ja_name: 'ジャズスポットジェ', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '新宿区新宿５－１－１', mapsquery: '新宿区新宿５－１－１', main_url: 'http://www.jazzspot-j.com/', notes: '', geox: 35.691652, geoy: 139.712432},
         {name: 'Shibuyamura', ja_name: '渋谷村', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都渋谷区渋谷2-12-11 渋谷KKビルB1F', mapsquery: '渋谷区渋谷2-12-11', main_url: 'http://www.geocities.jp/shibuya_mura/infomation.html', notes: '', geox: 35.658694, geoy: 139.708428},
         {name: 'Dance Bar', ja_name: 'ダンスばー', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '東京都新宿区新宿 3-20-6 ケンタッキービル 4F', mapsquery: '東京都新宿区新宿 3-20-6', main_url: 'http://www.ne.jp/asahi/live/live/dance.htm', notes: 'Piano Bar', geox: 35.692944, geoy: 139.703018},
         {name: 'Pearl Bar', ja_name: 'パールばー', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都新宿区新宿 3-21-7 東新ビル４Ｆ', mapsquery: '東京都新宿区新宿 3-21-7', main_url: 'http://www.ne.jp/asahi/live/live/pearlbar.htm', notes: 'Piano Bar', geox: 35.693054, geoy: 139.702397},
         {name: 'Vagabond', ja_name: 'バガボンド', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '西新宿1-4-20', mapsquery: '西新宿1-4-20', main_url: '', notes: 'Piano Bar', geox: 35.693036, geoy: 139.698713},
         {name: 'Shibuya Jam House', ja_name: '渋谷ジャムハウス', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 1, gigged: 0, address: '東京都渋谷区渋谷1-15-16　ソシアルビル2F', mapsquery: '東京都渋谷区渋谷1-15-16', main_url: 'http://www.jamhouse-jazz.com', geox: 35.660554, geoy: 139.7029},
         {name: 'Sometime', ja_name: '吉祥寺サムタイム', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '武蔵野市吉祥寺　本町１丁目１１−３１ 石川ビル', mapsquery: 'sometime 吉祥寺', main_url: 'http://www.sometime.co.jp/sometime/index.html', notes: '', geox: 35.7049922, geoy: 139.5800114},
         {name: 'Meg', ja_name: '吉祥寺メグ', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '武蔵野市吉祥寺本町 1-31-3', mapsquery: '武蔵野市吉祥寺本町 1-31-3', main_url: 'http://www.meg-jazz.com', notes: '', geox: 35.7038363, geoy: 139.582301},
         {name: 'Intro', ja_name: 'INTRO', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都新宿区高田馬場2-14-8 NTビルB1', mapsquery: '東京都新宿区高田馬場2-14-8', main_url: 'http://www.momenya.jp/~intro/', notes: '', geox: 35.7128797, geoy: 139.7062982},
         {name: 'Four & More', ja_name: 'Four & More', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 1, address: '東京都台東区千束２-２５-４エスポワール入谷Ｂ１ ', mapsquery: '東京都台東区千束２-２５-４', main_url: 'http://www.geocities.jp/fo_and_mo/fourandmore/index.html', notes: '', geox: 35.721576, geoy: 139.7907109},
         {name: 'Club 440', ja_name: 'クラブ　４４０', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都世田谷区代沢5-29-15SYビル1F', mapsquery: '東京都世田谷区代沢5-29-15', main_url: 'http://www.club251.co.jp/', notes: '', geox: 35.658285, geoy: 139.6673485},
         {name: 'JZ Brat', ja_name: 'JZ BRAT', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都渋谷区桜丘町26-1F', old_address: '東京都渋谷区桜丘町26-1 セルリアンタワー東急ホテル2F', mapsquery: '東京都渋谷区桜丘町26-1', main_url: 'http://www.jzbrat.com', notes: '', geox: 35.65645, geoy: 139.6994428},
         {name: 'Aoi Heya', ja_name: '青い部屋', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都渋谷区渋谷2-12-13', old_address: '東京都渋谷区渋谷2-12-13八千代ビルB1F', mapsquery: '東京都渋谷区渋谷2-12-13', main_url: 'http://www.aoiheya.com', notes: '', geox: 35.6586389, geoy: 139.7081114},
         {name: 'Jazz Bird', ja_name: 'ジャズ　バード', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '東京都港区南青山3-13-1　小林ビルB1', mapsquery: '東京都港区南青山3-13-1', main_url: 'http://www2.ttcn.ne.jp/~jazzbird/', notes: '', geox: 35.6659743, geoy: 139.7136385},
         {name: 'Miles Cafe', ja_name: 'マイルス　カフェ', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '東京都豊島区池袋1-8-8池袋労働基準協会ビルB2', mapsquery: '東京都豊島区池袋1-8-8', main_url: 'http://www.milescafe.com', notes: '', geox: 35.7364637, geoy: 139.7115078},
         {name: 'What The Dickens', ja_name: 'What The Dickens', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都渋谷区恵比寿西1-13-3　4th FLOOR, ROOB 6 BLDG.', mapsquery: '東京都渋谷区恵比寿西1-13-3', main_url: 'http://www.whatthedickens.jp/', notes: '', geox: 35.6476402, geoy: 139.7079451},
         {name: 'Sam and Dave', ja_name: 'SAM AND DAVE', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 1, address: '東京都港区赤坂４−３−６', mapsquery: '東京都港区赤坂４−３−６', main_url: 'http://www.samanddave.jp/', notes: '', geox: 35.6743907, geoy: 139.7361111},
         {name: 'Cohiba Atmosphere', ja_name: 'コイーバ・アトモスフィア　東京', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都港区西麻布１−１４−１', mapsquery: '東京都港区西麻布1-14-1', main_url: 'http://www.cohiba-atmosphere.jp/', notes: '', geox: 35.6614891, geoy: 139.7235433},
         {name: 'Club Edge Roppongi', ja_name: 'Club Edge六本木', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都港区六本木5-18-12 Five Plaza B2F', mapsquery: '東京都港区六本木5-18-12', main_url: 'http://www.club-edge.net/top.html', notes: '', geox: 35.6608673, geoy: 139.7373504},
         {name: 'Jirokichi', ja_name: 'ジロキチ高円寺', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都杉並区高円寺北2-3-4高円寺ビルB1', mapsquery: '東京都杉並区高円寺北2-3-4', main_url: 'http://www.jirokichi.net', notes: '', geox: 35.7057901, geoy: 139.6512586},
         {name: 'Sunny Side', ja_name: 'サニーサイド', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '東京都新宿区西早稲田3-28-1', mapsquery: '東京都新宿区西早稲田3-28-1', main_url: 'http://www.sunny-side.jp/', notes: '', geox: 35.7115745, geoy: 139.7104394},
         {name: 'Cafe Cotton Club', ja_name: 'カフェ・コットン・クラブ ', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '東京都新宿区高田馬場1-17-14', mapsquery: '東京都新宿区高田馬場1-17-14', main_url: 'http://www.intro.co.jp/cotton/index.html', notes: '', geox: 35.7121326, geoy: 139.7068732},
         {name: 'Eurasian', ja_name: 'ユーラシアン', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都新宿区西落合3-1-1　ニッコービル2F ', mapsquery: '東京都新宿区西落合3-1-1', main_url: 'http://www.eurasian.co.jp', notes: '', geox: 35.72275, geoy: 139.6837027}
        ];

clubs.each do |club|
  #print club[:name]
  v = Venue.new(
                :name       => club[:name],
                :access_url => "",
                :main_url		=> club[:main_url],
                :address		=> club[:address],
                :geo_x      => club[:geo_x],
                :geo_y      => club[:geo_y])

  if v.save
    v.translations.create(:locale => "ja", :name => club[:ja_name], :address => club[:address])
  else
    print "Error saving #{club[:name]}\n"
  end

end
