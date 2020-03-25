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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end #each_with_index
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  
  if (1..9).to_a.index(input.to_i) != nil
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.index(input) != nil
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end #elsif
end

def exit_jukebox
  puts "Goodbye"
end

def prompt
  puts "Please enter a command:"
  gets.chomp
end

def run(songs)
  input = prompt
  
  while input != "exit"
    if input == "list"
      list(songs)
      input = prompt
    elsif input == "play"
      play(songs)
      input = prompt
    elsif input == "help"
      help
      input = prompt
    else 
      puts "Invalid input, please try again"
      help
      input = prompt 
    end # input commands
  end # != exit
  
  exit_jukebox
end 