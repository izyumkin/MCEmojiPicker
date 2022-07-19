Pod::Spec.new do |s|

  s.name         = "EmojiPicker"
  s.version      = "1.0.2"
  s.summary      = "Emoji picker for iOS like on macOS"
  s.homepage     = "https://github.com/izzyumkin/EmojiPicker"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Egor Badmaev" => "badmaeve2511@gmail.com" }
  s.source       = { :git => "https://github.com/htmlprogrammist/EmojiPicker.git", :tag => s.version }
  s.source_files = 'Sources/EmojiPicker/**/*.swift'
  
  s.swift_version = '5.1'
  s.ios.deployment_target = '12.0'

end
