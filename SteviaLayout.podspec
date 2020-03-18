Pod::Spec.new do |s|
  s.name             = 'SteviaLayout'
  s.version          = "4.8.0-vm"
  s.summary          = "Elegant view layout for iOS"
  s.homepage         = "https://github.com/freshOS/Stevia"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = 'freshOS'
  s.source           = { :git => "https://github.com/VidMob/Stevia.git",
                         :tag => s.version.to_s }
  s.source_files     = "Sources/Stevia/*.swift"
  s.requires_arc     = true
  s.ios.deployment_target = "9"
  s.tvos.deployment_target = "10.2"
  s.description  = "Elegant view layout for iOS :leaves: - Auto layout code finally readable by a human being"
  s.module_name = 'Stevia'
end