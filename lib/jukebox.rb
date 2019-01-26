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
#the help command method
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

#list method
def list(title)
  songs.each_with_index { |song, index|
    puts (index + 1).to_s + ". " + song
    }
end

#the play method
def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  valid = false
  songs.each_with_index do |song, index|
    if (choice.to_i - 1 == index)
      puts "Playing #{songs[index]}"
      valid = true
    elsif (choice == song)
      puts "Playing #{choice}"
      valid = true
    end
  end
  puts "Invalid input, please try again" if valid == false
end
#exit method
def exit_jukebox
  puts "Goodbye"
end

#play method, type exit to stop the program
def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  while user_response != "exit"
    case user_response
      when "help"
        help
        puts "Please enter a command:"
        user_response = gets.chomp
      when "list"
        list(songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      when "play"
        play(songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      else
        puts "Invalid input, please try again"
        user_response = gets.chomp
    end
  end
  exit_jukebox
end
