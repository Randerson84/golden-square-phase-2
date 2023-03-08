As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

# EXAMPLE

class Musiclist
    def initialize()
        # list_of_music = []
    end
    def add_music(music)
        # music is a string
        # no output
    end
    def show_music()
        # no input
        # outputs a list of music
    end
end

# EXAMPLES

# 1
music_list = Musiclist.new
music_list.show_music() => fail "No music input"


# 2
music_list = Musiclist.new
music_list.add_music("Heart - Barracuda")
music_list.add_music("Dire Straights - Sultans of Swing")
music_list.show_music() => ["Heart - Barracuda", "Dire Straights - Sultans of Swing"]

# 3
music_list = Musiclist.new
music_list.add_music("")
music_list.show_music() => fail "No music input"

# 4
music_list = Musiclist.new
music_list.add_music("Heart - Barracuda")
music_list.show_music() => ["Heart - Barracuda"]
