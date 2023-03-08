require 'music_list'

RSpec.describe "Musiclist" do
    it "No music input" do
        music_list = Musiclist.new
        expect{music_list.show_music}.to raise_error "No music input"
    end
    it "Add one piece of music" do
        music_list = Musiclist.new
        music_list.add_music("Heart - Barracuda")
        expect(music_list.show_music).to eq ["Heart - Barracuda"]
    end
    it "Add multiple pieces of music" do
        music_list = Musiclist.new
        music_list.add_music("Heart - Barracuda")
        music_list.add_music("Dire Straits - Sultans of Swing")
        expect(music_list.show_music).to eq ["Heart - Barracuda", "Dire Straits - Sultans of Swing"]
    end
    it "Empty music input" do
        music_list = Musiclist.new
        expect{music_list.add_music("")}.to raise_error "No music input by user"
    end
end