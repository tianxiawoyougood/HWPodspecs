Pod::Spec.new do |s|
  s.name         = "RPJSONValidator"
  s.version      = "0.2.1"
  s.summary      = "Validate JSON before it is mapped"
  s.homepage     = "https://github.com/tianxiawoyougood/RPJSONValidator"
  s.license      = 'MIT'
  s.author       = { "sean" => "sean@email.com" }
  s.platform     = :ios, '9.0'
  s.source       = { :git => "https://github.com/tianxiawoyougood/RPJSONValidator.git", :tag => s.version.to_s }
  s.source_files = 'RPJSONValidator/*.{h,m}'
  s.framework 	 = 'Foundation'
  s.requires_arc = true
end
