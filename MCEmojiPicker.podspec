Pod::Spec.new do |s|
  s.name = 'MCEmojiPicker'
  s.version = '1.2.5'
  s.license = 'MIT'
  s.summary = 'Emoji picker for iOS like on MacOS'
  s.homepage = 'https://github.com/izyumkin/MCEmojiPicker'
  s.authors = { 'Ivan Izyumkin' => 'izzyumkin@gmail.com' }
  
  s.source = { :git => 'https://github.com/izyumkin/MCEmojiPicker.git', :tag => s.version.to_s }
  s.source_files = 'Sources/MCEmojiPicker/**/*.swift'
  s.resource_bundle = { "MCEmojiPicker" => ["Sources/MCEmojiPicker/**/*.lproj/*.strings"] }
  s.swift_version = '4.2'
  s.platform = :ios, '11.1'
end
