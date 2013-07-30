#!/bin/env ruby
# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Venue.delete_all
Event.delete_all
Musician.delete_all

@fiat = Venue.create(
	:name => "Fiat Space",
  :access_url => "http://fiatcaffe.jp/access",
	:main_url		=> "http://fiatcaffe.jp",
	:address		=> "１丁目-４−５ Kitaaoyama, Minato, Tokyo")

@mike = Musician.create(
		:name 				=> "Mike Zachernuk",
		:member 			=> 1,
		:url					=> "http://www.myspace.com/mikezachernuk",
		:instrument		=> "tp")

@paul = Musician.create(
		:name 				=> "Paul Dwyer",
		:member 			=> 1,
		:url					=> "http://www.myspace.com/pauldwyerbass",
		:instrument		=> "b")

@yusuke = Musician.create(
		:name 				=> "Yusuke Toyama",
		:member 			=> 1,
		:url					=> "http://www.dancingbus.com",
		:instrument		=> "dr")

@jun = Musician.create(
		:name 				=> "Jun Satsuma",
		:member 			=> 1,
		:url					=> "http://junsatsuma.com",
		:instrument		=> "gt")

@ron = Musician.create(
		:name 				=> "Ron Freund",
		:member 			=> 0,
		:url					=> "http://tapdance.co.il/EN/",
		:instrument		=> "tap")

@shingo = Musician.create(
		:name 				=> "Shingo Yamaguchi",
		:member 			=> 1,
		:url					=> "http://www.shingoyamaguchi.com",
		:instrument		=> "dr")

@e = Event.new(
		:name		=> "Isaac's Sayonara",
		:start 	=> "Thursday, May 16, 2013, 7:30pm +0900",
		:end 		=> "Thursday, May 16, 2013, 11pm +0900")
@e.venue = @fiat
@e.info_url = "../ENG/fiat.html"
@e.musicians << @mike << @paul << @shingo << @jun << @ron
@e.save

@fiat_event = Event.new(
		:name		=> "Fiat Swing",
		:start 	=> "Thursday, Nov 19, 2012 7:30pm +0900",
		:end 		=> "Thursday, Nov 19, 2012 11pm +0900")
@fiat_event.venue = @fiat
@fiat_event.info_url = "../ENG/fiat.html"
@fiat_event.musicians << @mike << @paul << @yusuke
@fiat_event.save

@biervana = Venue.create(
	:name => "Biervana",
  :access_url => "http://www.biervana.com/access",
	:main_url		=> "http://www.biervana.com",
	:address		=> "Prudential Tower 1F, 2-13-10 Nagatacho Chiyoda-ku, Tokyo")

@yanoo = Musician.create(
		:name 				=> "Yanoo Tadashi from Aozora Romance Band",
		:member 			=> 0,
		:url					=> "",
		:instrument		=> "gt")

@yuko = Musician.create(
		:name 				=> "Yuko Sumi",
		:member 			=> 0,
		:url					=> "",
		:instrument		=> "as")

@biervana_event = Event.new(
		:name		=> "Beer and Swing",
		:start 	=> "Monday, Jul. 16, 2012 7pm +0900",
		:end 		=> "Monday, Jul. 16, 2012 10:30pm +0900",
		:description  => "In Akasaka, Y1500,<br>Beginner Lesson at 9pm")
@biervana_event.venue = @biervana
@biervana_event.info_url = "biervana.html"
@biervana_event.musicians << @mike << @paul << @shingo << @yanoo << @yuko
@biervana_event.save

@biervana_event = Event.new(
		:name		=> "Beer and Swing",
		:start 	=> "Saturday, Jun. 23, 2012 7pm +0900",
		:end 		=> "Saturday, Jun. 23, 2012 10:30pm +0900",
		:description  => "In Akasaka, Y1500<br>Beginner Lesson at 9pm")
@biervana_event.venue = @biervana
@biervana_event.info_url = "biervana.html"
@biervana_event.musicians << @mike << @paul << @shingo
@biervana_event.save


#@f2 = @fiat_event.create_duplicate
#@f2.start = "Thursday, Apr. 26, 2012 7:30pm +0900"
#@f2.end = "Thursday, Apr. 26, 2012 11pm +0900"
#@f2.musicians.delete_all
#@f2.musicians << @mike << @paul << @shingo
#@f2.save

@lulu = Musician.create(
		:name 				=> "Lulu Galore",
		:member 			=> 0,
		:url					=> "http://www.lulugalore.com",
		:instrument		=> "v")

@peter = Musician.create(
		:name 				=> "Peter Vawter",
		:member 			=> 1,
		:url					=> "http://www.twitter.com/petervawter",
		:instrument		=> "vl")

@satomi = Musician.create(
		:name 				=> "Satomi",
		:member 			=> 0,
		:url					=> "http://blog.livedoor.jp/satojazz/",
		:instrument		=> "tap")
		
@jw = Musician.create(
		:name 				=> "Joe Wagner",
		:member 			=> 0,
		:url					=> "",
		:instrument		=> "ts")
    		
@seoul = Venue.create(
	:name => "Seoul",
  :access_url => "",
	:main_url		=> "http://www.campswingit.com",
	:address		=> "Seoul, Korea")

@beijing = Venue.create(
	:name => "Bejing",
  :access_url => "",
	:main_url		=> "http://www.greatwallswingout.com",
	:address		=> "Bejing, China")

@hk = Venue.create(
	:name => "Hong Kong",
  :access_url => "",
	:main_url		=> "http://www.hongkongswingfestival.com",
	:address		=> "Hong Kong")

@e = Event.new(
		:name		=> "Great Wall Swing Out",
		:start 	=> "April 13, 2012",
		:end 		=> "April 15, 2012",
		:description  => "")
@e.venue = @beijing
@e.info_url = "http://www.greatwallswingout.com"
@e.musicians << @lulu
@e.save

@e = Event.new(
		:name		=> "Camp Swing It, 2012",
		:start 	=> "April 6, 2012",
		:end 		=> "April 8, 2012",
		:description  => "")
@e.venue = @seoul
@e.info_url = "http://www.campswingit.com"
@e.musicians << @mike << @peter << @yusuke << @paul
@e.save

@dancing_bus_roppongi = Venue.create(
	:name => "Dancing Bus in Roppongi",
  :access_url => "",
	:main_url		=> "http://www.dancingbus.com",
	:address		=> "Roppongi, Tokyo")

@e = Event.new(
		:name		=> "Swing Fever by Dancing Bus",
		:start 	=> "Sunday, Jan. 29, 2012, 6pm +0900",
		:end 		=> "Sunday, Jan. 29, 2012, 10pm +0900",
		:description  => "")
@e.venue = @dancing_bus_roppongi
@e.info_url = "http://www.dancingbus.com"
@e.musicians << @jw << @yusuke << @paul
@e.save
  
@e = Event.new(
		:name		=> "Hong Kong Swing Festival, 2012",
		:start 	=> "Jan 13, 2012",
		:end 		=> "Jan 19, 2012",
		:description  => "")
@e.venue = @hk
@e.info_url = "http://www.hkswingfestival.com"
@e.musicians << @peter << @paul
@e.save

@e = Event.new(
		:name		=> "Camp Swing It, 2011",
		:start 	=> "March 25, 2011",
		:end 		=> "March 27, 2011",
		:description  => "")
@e.venue = @seoul
@e.info_url = "http://www.campswingit.com"
@e.musicians << @mike << @peter << @yusuke << @paul << @satomi
@e.save

@taproom = Venue.create(
	:name => "Nakameguro Tap Room",
  :access_url => "",
	:main_url		=> "http://bairdbeer.com/en/taproom/nakameguro-taproom",
	:address		=> "Nakameguro")

@e = Event.new(
	:name		=> "Beer & Swing",
	:start 	=> "Sunday, Dec. 26, 2010 5pm +0900",
	:end 		=> "Sunday, Dec. 26, 2010 9pm +0900",
	:description  => "No cover")
@e.venue = @taproom
@e.info_url = ""
@e.musicians << @mike << @yusuke << @paul
@e.save

@fccj = Venue.create(
  :name     => "Foreign Correspondents Club Japan",
  :main_url => "http://fccj.ne.jp",
  :address  => "Yurakucho 1-7-1, Chiyoda-ku, Tokyo"
)

@e = Event.new(
	:name		=> "Swing for the Foreign Press",
	:start 	=> "Saturday, June 12, 2010 7pm +0900",
	:end 		=> "Saturday, June 12, 2010 9pm +0900",
	:description  => "No cover")
@e.venue = @fccj
@e.info_url = ""
@e.musicians << @mike << @yusuke << @paul
@e.save


#/** Jazz Data */

clubs = [
    {name: 'Blue Note', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '〒107-0062 東京都港区南青山6-3-16 ライカビル', mapsQuery: '東京都港区南青山6-3-16', main_url: 'http://www.bluenote.co.jp/', notes: '', geoX: 35.661197, geoY: 139.716226},
       {name: 'Cotton Club', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '〒100-6402 東京都千代田区丸の内2-7-3 東京ビルTOKIA 2F', mapsquery: '東京都千代田区丸の内2-7-3', main_url: 'http://www.cottonclubjapan.co.jp/', notes: '', geox: 35.680085, geoy: 139.764678},
    {name: 'Half Tone', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 1, gigged: 0, address: '立川市錦町１－２－５　２Ｆ', mapsquery: '立川市錦町１－２－５', main_url: 'http://www007.upp.so-net.ne.jp/halftone/', notes: '', geox: 35.697343, geoy: 139.416353},
    {name: 'Jesse James Club', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '〒１９０－００１２　　　東京都　立川市　曙町２－１１－７　立川リージェントビルＢ１Ｆ', mapsquery: '東京都　立川市　曙町２－１１－７', main_url: 'http://homepage2.nifty.com/jessejames-tachikawa/', notes: '', geox: 35.700077, geoy: 139.415105},
    {name: 'Ko-ko', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '150-0043東京都渋谷区 道玄坂2-26-5ひまわりビル2F', mapsquery: '東京都渋谷区道玄坂2-26-5', main_url: 'http://www3.point.ne.jp/~ko-ko/', notes: 'Favourite Jam House', geox: 35.659359, geoy: 139.697125},
    {name: 'Manhattan', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 1, gigged: 0, address: '東京都杉並区阿佐ヶ谷北2-2-7喜楽ビル3F', main_url: 'http://www.ateliermw.com/manhattan/', notes: '', geox: 35.705051, geoy: 139.634916},
    {name: 'First Stage', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 1, gigged: 0, address: '六本木　３－１５－２１', mapsquery: '六本木　３－１５－２１', main_url: 'http://www2.odn.ne.jp/firststage/', notes: '', geox: 35.662237, geoy: 139.735298},
    {name: 'Gate One', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 1, gigged: 0, address: '新宿区高田馬場２－８－３　丸石ビル東館Ｂ１', mapsquery: '新宿区高田馬場２－８－３', main_url: 'http://www.h3.dion.ne.jp/~gateone/', notes: '', geox: 35.712109, geoy: 139.708604},
    {name: 'Bar Jazzy', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 0, gigged: 1, address: '中央区日本橋馬喰町 1-8-8　森忠ビルB1F', mapsquery: '中央区日本橋馬喰町 1-8-8', main_url: 'http://homepage1.nifty.com/barjazzy/', notes: '', geox: 35.694045, geoy: 139.782084},
    {name: 'Kinnostubo', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 0, gigged: 1, address: '東京都世田谷区用賀2-36-13第二鎌田ビルB1 東急田園都市線用賀駅東口徒歩1分', mapsquery: '世田谷区用賀２丁目３６−１３', main_url: 'http://www.kinsmc.com/kinnotsubo/', notes: '', geox: 35.627403, geoy: 139.635615},
    {name: 'Pit-Inn', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '新宿区新宿2-12-4アコード新宿B1', mapsquery: '新宿区新宿2-12', main_url: 'http://www.pit-inn.com/', notes: 'Best club for Japanese musicians', geox: 35.690572, geoy: 139.707676},
    {name: 'Someday', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '〒105-0003 東京都港区西新橋1-20-9第５須賀ビルB1', mapsquery: '東京都港区西新橋1-20-9', main_url: 'http://someday.net/', notes: '', geox: 35.667702, geoy: 139.752412},
    {name: 'Jazz Spot J', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '新宿区新宿５－１－１', mapsquery: '新宿区新宿５－１－１', main_url: 'http://www.jazzspot-j.com/', notes: '', geox: 35.691652, geoy: 139.712432},
    {name: 'Shibuyamura', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '渋谷区渋谷2-12-11 渋谷KKビルB1F', mapsquery: '渋谷区渋谷2-12-11', main_url: 'http://www.geocities.jp/shibuya_mura/infomation.html', notes: '', geox: 35.658694, geoy: 139.708428},
    {name: 'Dance Bar', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '東京都新宿区新宿 3-20-6 ケンタッキービル 4F', mapsquery: '東京都新宿区新宿 3-20-6', main_url: 'http://www.ne.jp/asahi/live/live/dance.htm', notes: 'Piano Bar', geox: 35.692944, geoy: 139.703018},
    {name: 'Pearl Bar', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都新宿区新宿 3-21-7 東新ビル４Ｆ', mapsquery: '東京都新宿区新宿 3-21-7', main_url: 'http://www.ne.jp/asahi/live/live/pearlbar.htm', notes: 'Piano Bar', geox: 35.693054, geoy: 139.702397},
    {name: 'Vagabond', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '西新宿1-4-20', mapsquery: '西新宿1-4-20', main_url: '', notes: 'Piano Bar', geox: 35.693036, geoy: 139.698713},
    {name: 'Shibuya Jam House', city: 'Tokyo', country: 'Japan', listened: 0, jammed: 1, gigged: 0, address: '東京都渋谷区渋谷1-15-16　ソシアルビル2F', mapsquery: '東京都渋谷区渋谷1-15-16', main_url: 'http://www.jamhouse-jazz.com', geox: 35.660554, geoy: 139.7029},
    {name: 'Sometime', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '武蔵野市吉祥寺　本町１丁目１１−３１ 石川ビル', mapsquery: 'sometime 吉祥寺', main_url: 'http://www.sometime.co.jp/sometime/index.html', notes: '', geox: 35.7049922, geoy: 139.5800114},
    {name: 'Meg', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '武蔵野市吉祥寺本町 1-31-3', mapsquery: '武蔵野市吉祥寺本町 1-31-3', main_url: 'http://www.meg-jazz.com', notes: '', geox: 35.7038363, geoy: 139.582301},
    {name: 'Intro', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都新宿区高田馬場2-14-8 NTビルB1', mapsquery: '東京都新宿区高田馬場2-14-8', main_url: 'http://www.momenya.jp/~intro/', notes: '', geox: 35.7128797, geoy: 139.7062982},
    {name: 'Four & More', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 1, address: '東京都台東区千束２-２５-４エスポワール入谷Ｂ１ ', mapsquery: '東京都台東区千束２-２５-４', main_url: 'http://www.geocities.jp/fo_and_mo/fourandmore/index.html', notes: '', geox: 35.721576, geoy: 139.7907109},
    {name: 'Club 440', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都世田谷区代沢5-29-15SYビル1F', mapsquery: '東京都世田谷区代沢5-29-15', main_url: 'http://www.club251.co.jp/', notes: '', geox: 35.658285, geoy: 139.6673485},
    {name: 'JZ Brat', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都渋谷区桜丘町26-1 セルリアンタワー東急ホテル2F', mapsquery: '東京都渋谷区桜丘町26-1', main_url: 'http://www.jzbrat.com', notes: '', geox: 35.65645, geoy: 139.6994428},
    {name: 'Aoi Heya', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都渋谷区渋谷2-12-13八千代ビルB1F', mapsquery: '東京都渋谷区渋谷2-12-13', main_url: 'http://www.aoiheya.com', notes: '', geox: 35.6586389, geoy: 139.7081114},
    {name: 'Jazz Bird', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '東京都港区南青山3-13-1　小林ビルB1', mapsquery: '東京都港区南青山3-13-1', main_url: 'http://www2.ttcn.ne.jp/~jazzbird/', notes: '', geox: 35.6659743, geoy: 139.7136385},
    {name: 'Miles Cafe', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '東京都豊島区池袋1-8-8池袋労働基準協会ビルB2', mapsquery: '東京都豊島区池袋1-8-8', main_url: 'http://www.milescafe.com', notes: '', geox: 35.7364637, geoy: 139.7115078},
    {name: 'What The Dickens', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都渋谷区恵比寿西1-13-3　4th FLOOR, ROOB 6 BLDG.', mapsquery: '東京都渋谷区恵比寿西1-13-3', main_url: 'http://www.whatthedickens.jp/', notes: '', geox: 35.6476402, geoy: 139.7079451},
    {name: 'Sam and Dave', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 1, address: '東京都港区赤坂４−３−６', mapsquery: '東京都港区赤坂４−３−６', main_url: 'http://www.samanddave.jp/', notes: '', geox: 35.6743907, geoy: 139.7361111},
    {name: 'Cohiba Atmosphere', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都港区西麻布１−１４−１', mapsquery: '東京都港区西麻布1-14-1', main_url: 'http://www.cohiba-atmosphere.jp/', notes: '', geox: 35.6614891, geoy: 139.7235433},
    {name: 'Club Edge Roppongi', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都港区六本木5-18-12 Five Plaza B2F', mapsquery: '東京都港区六本木5-18-12', main_url: 'http://www.club-edge.net/top.html', notes: '', geox: 35.6608673, geoy: 139.7373504},
    {name: 'Jirokichi', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都杉並区高円寺北2-3-4高円寺ビルB1', mapsquery: '東京都杉並区高円寺北2-3-4', main_url: 'http://www.jirokichi.net', notes: '', geox: 35.7057901, geoy: 139.6512586},
    {name: 'Sunny Side', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '東京都新宿区西早稲田3-28-1', mapsquery: '東京都新宿区西早稲田3-28-1', main_url: 'http://www.sunny-side.jp/', notes: '', geox: 35.7115745, geoy: 139.7104394},
    {name: 'Cafe Cotton Club', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 1, gigged: 0, address: '東京都新宿区高田馬場1-17-14', mapsquery: '東京都新宿区高田馬場1-17-14', main_url: 'http://www.intro.co.jp/cotton/index.html', notes: '', geox: 35.7121326, geoy: 139.7068732},
    {name: 'Eurasian', city: 'Tokyo', country: 'Japan', listened: 1, jammed: 0, gigged: 0, address: '東京都新宿区西落合3-1-1　ニッコービル2F ', mapsquery: '東京都新宿区西落合3-1-1', main_url: 'http://www.eurasian.co.jp', notes: '', geox: 35.72275, geoy: 139.6837027}
];

clubs.each do |club|
  Venue.create(
  	:name       => club[:name],
    :access_url => "",
  	:main_url		=> club[:main_url],
  	:address		=> club[:address],
  	:geo_x      => club[:geo_x],
  	:geo_y      => club[:geo_y])
  
end
