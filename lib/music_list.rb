class Musiclist
    def initialize
        @list_of_music = []
    end
    def add_music(music)
        fail "No music input by user" if music == ""
        @list_of_music << music
    end
    def show_music
        fail "No music input" if @list_of_music.empty?
        return @list_of_music
    end
end