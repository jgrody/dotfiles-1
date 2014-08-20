BASE_PATH  = File.dirname(__FILE__) + '/custom/'

# Symlink all files found in custom directory
task :symlink  do
  Dir.foreach(BASE_PATH) do |item|
    next if item == '.' or item == '..'

    src  = File.join(BASE_PATH, item)
    dest = File.join(Dir.home, item)

    options = { force: true }
    symlink(src, dest, options)
  end
end
