Pod::Spec.new do |s|
  s.name         = "MarginLabel"
  s.version      = "1.0.0"
  s.summary      = "Set margins for UILabel"
  s.homepage     = "https://github.com/iLiuChang/MarginLabel"
  s.license      = "MIT"
  s.authors      = { "iLiuChang" => "iliuchang@foxmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/iLiuChang/MarginLabel.git", :tag => s.version }
  s.requires_arc = true
  s.swift_version = "5.0"
  s.source_files = "Source/*.{swift}"
end
