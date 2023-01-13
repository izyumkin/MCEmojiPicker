Pod::Spec.new do |s|
  s.name = 'EmojiPicker'
  s.version = '2.0.1'
  s.license = 'MIT'
  s.summary = 'Emoji picker for iOS like on MacOS'
  s.homepage = 'https://github.com/htmlprogrammist/EmojiPicker'
  s.authors = { 'Ivan Izyumkin' => 'izzyumkin@gmail.com',
                'Egor Badmaev' => 'eg.badmaev@gmail.com' }
  
  s.source = { :git => 'https://github.com/htmlprogrammist/EmojiPicker.git', :tag => s.version.to_s }
  s.source_files = 'Sources/EmojiPicker/**/*.swift'
  s.resource_bundle = { "EmojiPicker" => ["Sources/EmojiPicker/**/*.lproj/*.strings"] }
  
  s.swift_version = '4.2'
  s.platform = :ios, '11.1'
end
