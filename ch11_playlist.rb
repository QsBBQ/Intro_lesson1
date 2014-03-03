#Chapter 11 playlist

mymusic = shuffle(Dir['**/*.mp3'])

file.open 'playlist.m3u', 'w' do |f|
  mymusic.each do |mp3|
    f.write mp3+"\n"
  end
end
puts 'Done!'