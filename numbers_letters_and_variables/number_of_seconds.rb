#!/usr/bin/env ruby

seconds_in_minute = 60
minutes_in_hour = 60
hours_in_day = 24
days_in_week = 7
weeks_in_year = 52
puts "There are " + seconds_in_minute.to_s + " seconds in a minute"
puts "There are " + minutes_in_hour.to_s + " minutes in an hour"
puts "There are " + hours_in_day.to_s + " hours in a day"
puts "There are " + days_in_week.to_s + " days in a week"
seconds_in_hour = seconds_in_minute * minutes_in_hour
puts "That means there are:"
puts "  " + seconds_in_hour.to_s + " seconds in an hour,"
seconds_in_day = seconds_in_hour * hours_in_day
puts "  " + seconds_in_day.to_s + " seconds in a day,"
seconds_in_week = seconds_in_day * days_in_week
puts "  " + seconds_in_week.to_s + " seconds in a week"
seconds_in_year = seconds_in_week * weeks_in_year
seconds_in_20_yrs = seconds_in_year * 20
puts "That means when you turn 20, you've been alive for " + seconds_in_20_yrs.to_s + " seconds,"
seconds_in_100_yrs = seconds_in_year * 5
puts "and if you make it to 100, you will have lived " + seconds_in_100_yrs.to_s + " seconds. Make them count!"
