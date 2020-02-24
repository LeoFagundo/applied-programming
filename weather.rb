require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "11aeb56853dd3a8b89a9f7acd90f6f07"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash

current_temp = forecast["currently"]["temperature"]
current_summary = forecast["currently"]["summary"]

day1_temp = forecast["daily"]["data"][0]["temperatureHigh"]
day1_summary = forecast["daily"]["data"][0]["summary"]

day2_temp = forecast["daily"]["data"][1]["temperatureHigh"]
day2_summary = forecast["daily"]["data"][1]["summary"]

day3_temp = forecast["daily"]["data"][2]["temperatureHigh"]
day3_summary = forecast["daily"]["data"][2]["summary"]

day4_temp = forecast["daily"]["data"][3]["temperatureHigh"]
day4_summary = forecast["daily"]["data"][3]["summary"]

day5_temp = forecast["daily"]["data"][4]["temperatureHigh"]
day5_summary = forecast["daily"]["data"][4]["summary"]

day6_temp = forecast["daily"]["data"][5]["temperatureHigh"]
day6_summary = forecast["daily"]["data"][5]["summary"]

day7_temp = forecast["daily"]["data"][6]["temperatureHigh"]
day7_summary = forecast["daily"]["data"][6]["summary"]

day8_temp = forecast["daily"]["data"][7]["temperatureHigh"]
day8_summary = forecast["daily"]["data"][7]["summary"]

# puts forecast["daily"]["data"][0]


puts "In Chicago, it is currently #{current_temp} degress and #{current_summary}"
puts "Extended forecast:"
# puts "A high temperature of #{day1_temp} and #{day1_summary}"
# puts "A high temperature of #{day2_temp} and #{day2_summary}"
# puts "A high temperature of #{day3_temp} and #{day3_summary}"
# puts "A high temperature of #{day4_temp} and #{day4_summary}"
# puts "A high temperature of #{day5_temp} and #{day5_summary}"
# puts "A high temperature of #{day6_temp} and #{day6_summary}"
# puts "A high temperature of #{day7_temp} and #{day7_summary}"
# puts "A high temperature of #{day8_temp} and #{day8_summary}"

forecast_array = forecast["daily"]["data"]
for weather_for_that_day in forecast_array
    puts "A high temperature of #{weather_for_that_day["temperatureHigh"]} and #{weather_for_that_day["summary"]}"
end