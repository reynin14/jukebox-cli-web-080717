songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can players
  - play : lets you choose a song to play
  - exit : exits this program
  "
end

def list(songs)
  songs.each do |title, index|
    puts index.to_s + ". " + title
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  if songs.include?(song_request)
    puts "Playing #{song_request}"
  elsif (1..9).to_a.include?(song_request.to_i)
    puts "Playing #{songs[song_request.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_response = ""
  while user_response
    puts "Please enter a command:"
    user_response = gets.downcase.chomp
    if user_response == "list"
      list(songs)
    elsif user_response == "play"
      list(songs)
      play(songs)
    elsif user_response == "help"
      help
    elsif user_response = "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
