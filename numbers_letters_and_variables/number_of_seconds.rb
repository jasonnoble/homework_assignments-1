#!/usr/bin/env ruby




int_sec_in_min = 60
int_min_in_hr = 60
int_hr_in_day = 24
int_day_in_week = 7
int_week_in_year = 52
puts "There are " + int_sec_in_min.to_s + " seconds in a minute"
puts "There are " + int_min_in_hr.to_s + " minutes in an hour"
puts "There are " + int_hr_in_day.to_s + " hours in a day"
puts "There are " + int_day_in_week.to_s + " days in a week"
int_agr = int_sec_in_min * int_min_in_hr
puts "That means there are:"
puts "  "+int_agr.to_s + " seconds in an hour,"
int_agr = int_agr * int_hr_in_day
puts "  "+int_agr.to_s + " seconds in a day,"
int_agr = int_agr * int_day_in_week
puts "  "+int_agr.to_s + " seconds in a week"
int_agr = int_agr * int_week_in_year * 20
puts "That means when you turn 20, you've been alive for "+int_agr.to_s+" seconds,"
int_agr = int_agr * 5
puts "and if you make it to 100, you will have lived "+int_agr.to_s+" seconds. Make them count!"