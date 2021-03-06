# -*- coding: utf-8 -*-
require 'rubygems'
require 'icalendar'
require 'kconv'

# Setting

standard_component = Icalendar::Component.new('STANDARD')
standard_component.custom_property('dtstart', '19700101T000000')
standard_component.custom_property('tzoffsetfrom', '+0900')
standard_component.custom_property('tzoffsetto', '+0900')
standard_component.custom_property('tzname', 'JST')

vtimezone_component = Icalendar::Component.new('VTIMEZONE')
vtimezone_component.custom_property('tzid', 'Asia/Tokyo')
vtimezone_component.add(standard_component)

# Create events

cal = Icalendar::Calendar.new

cal.event do
  dtstart       DateTime.new(2011, 11, 11, 13), {'TZID' => 'Asia/Tokyo'}
  dtend         DateTime.new(2011, 11, 12, 18), {'TZID' => 'Asia/Tokyo'}
  summary       "関西Ruby会議04"
  description   "関西のRubyist有志が主催する地域Ruby会議です(後援:日本Rubyの会、Ruby関西)。http://regional.rubykaigi.org/kansai04"
  klass         "Public"
end

cal.event do
  dtstart       DateTime.new(2011, 9, 10, 13), {'TZID' => 'Asia/Tokyo'}
  dtend         DateTime.new(2011, 9, 10, 17), {'TZID' => 'Asia/Tokyo'}
  summary       "Ruby/Rails勉強会@関西 第51回"
  description   "Ruby関西が主催する勉強会です。http://jp.rubyist.net/?KansaiWorkshop51"
  klass         "Public"
end

cal.event do
  dtstart       DateTime.new(2011, 8, 06, 13), {'TZID' => 'Asia/Tokyo'}
  dtend         DateTime.new(2011, 8, 06, 17), {'TZID' => 'Asia/Tokyo'}
  summary       "Ruby/Rails勉強会@関西 第50回"
  description   "Ruby関西が主催する勉強会です。http://jp.rubyist.net/?RubyKansai"
  klass         "Public"
end

cal.event do
  dtstart       DateTime.new(2011, 03, 12, 13), {'TZID' => 'Asia/Tokyo'}
  dtend         DateTime.new(2011, 03, 12, 17), {'TZID' => 'Asia/Tokyo'}
  summary       "Ruby/Rails勉強会@関西 第49回"
  description   "Ruby関西が主催する勉強会です。http://jp.rubyist.net/?RubyKansai"
  klass         "Public"
end

cal.event do
  dtstart       DateTime.new(2011, 01, 8, 13), {'TZID' => 'Asia/Tokyo'}
  dtend         DateTime.new(2011, 01, 8, 17), {'TZID' => 'Asia/Tokyo'}
  summary       "Ruby/Rails勉強会@関西 第48回"
  description   "Ruby関西が主催する勉強会です。http://jp.rubyist.net/?RubyKansai"
  klass         "Public"
end

cal.add(vtimezone_component)

<<<<<<< HEAD
File.open("ruby_kansai.ics", "w+b") { |f|
=======
File.open("ruby-kansai.ics", "w+b") { |f|
>>>>>>> 5dae793fba442c4437a53a72f43194360f741827
    f.write(cal.to_ical.toutf8)
}

