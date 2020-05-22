# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(name_input)
  game_hash.each do |side, team_info_hash|
    team_info_hash.each do |attr1, array|
      if attr1 == :players
        array.each do |player_stats|
          player_stats.each do |attr2, value|
            if name_input == value
              return player_stats[:points]
            end
          end
        end
      end
    end
  end
end

def shoe_size(name_input)
  game_hash.each do |side, team_info_hash|
    team_info_hash.each do |attr1, array|
      if attr1 == :players
        array.each do |player_stats|
          player_stats.each do |attr2, value|
            if name_input == value
              return player_stats[:shoe]
            end
          end
        end
      end
    end
  end
end

def team_colors(team_name_input)
  game_hash.each do |side, team_info_hash|
    team_info_hash.each do |attr1, array|
      if team_info_hash[attr1] == team_name_input
        return team_info_hash[:colors]
      end
    end
  end
end

def team_names
  team_names_array= []
  game_hash.each do |side, team_info_hash|
    team_info_hash.each do |attr1, array|
      if attr1 == :team_name
        team_names_array << team_info_hash[:team_name]
      end
    end
  end
  team_names_array
end

def player_numbers(team_name_input)
  jersey_numbers_array = []
  game_hash.each do |side, team_info_hash|
    team_info_hash.each do |attr1, array|
      if team_info_hash[attr1] == team_name_input
        team_info_hash[:players].each do |player_stats|
          player_stats.each do |attr2, value|
            if attr2 == :number
              jersey_numbers_array << value
            end
          end
        end
      end
    end
  end
  jersey_numbers_array
end

def player_stats(player_name_input)
  game_hash.each do |side, team_info_hash|
    team_info_hash.each do |attr1, array|
      if attr1 == :players
        array.each do |player_stats|
          player_stats.each do |attr2, value|
            if player_name_input == value
              return player_stats
            end
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  def largest_shoe_size_player
    max_shoe_size = 0
    max_shoe_size_player = ""
    game_hash.each do |side, team_info_hash|
    team_info_hash.each do |attr1, array|
      binding.pry
      if attr1 == :players
        binding.pry
        array.each do |player_stats|
          binding.pry
          player_stats.each do |attr2, value|
            binding.pry
            if (attr2 == :shoe) && (player_stats[attr2] > max_shoe_size)
              binding.pry
              max_shoe_size = player_stats[attr2]
              max_shoe_size_player = player_stats[:player_name]
            end
          end
        end
      end
    end
    return max_shoe_size_player
    binding.pry
  end
  
  game_hash.each do |side, team_info_hash|
    team_info_hash.each do |attr1, array|
      if attr1 == :players
        array.each do |player_stats|
          player_stats.each do |attr2, value|
            if largest_shoe_size_player == value
              return player_stats[:rebounds]
            end
          end
        end
      end
    end
  end
end
  
  
  
  
          

# Write code here