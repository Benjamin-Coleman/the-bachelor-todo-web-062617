require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestants|
    if season == season_number
      contestants.each do |contestant|
        contestant.each do |key, value|
          if contestant["status"] == "Winner"
            return contestant["name"].split(" ")[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      contestant.each do |key, value|
        if contestant["occupation"] == occupation
          return contestant["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_number, contestants|
    contestants.each do |contestant|
        if contestant["hometown"] == hometown
          counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season_number, contestants|
    contestants.each do |contestant|
        if contestant["hometown"] == hometown
          return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_counter = 0
  contestant_count = 0
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contestant|
        contestant.each do |key, value|
          age_counter += contestant["age"].to_f
          contestant_count += 1
        end
      end
    end
  end
  (age_counter / contestant_count).round
end
