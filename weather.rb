require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "6db4f62deb242d6ae74da3d760af00d6"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash

# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast`

# Example output:
#

current_temp = forecast["currently"]["temperature"]
current_condition = forecast["currently"]["summary"]
puts "In #{forecast["timezone"]}, it is currently #{current_temp} degrees and #{current_condition}"

# a loop gets built on an array, not a hash!
# variable made for what the array is, then you can use that to locate the data you need.
for day in forecast["daily"]["data"]
    puts "A high temperature of #{day["temperatureHigh"]} and #{day["summary"]}"
end

# Extended forecast:
# A high temperature of 36.47 and Possible flurries in the afternoon.
# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partly cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.