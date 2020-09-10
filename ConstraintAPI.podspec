Pod::Spec.new do |spec|
  spec.name         = 'ConstraintAPI'
  spec.version      = '0.0.1'
  spec.license      = 'NO LICENSE'
  spec.homepage     = 'https://github.com/Swagat-Mishra-Bose/ConstraintAPI'
  spec.authors      = { 'Swagat-Mishra-Bose' => 'swagat_mishra@bose.com' }
  spec.summary      = 'Wrapper for UI Constraints'
  spec.swift_version= '5.0'
  spec.source       = { :git => 'https://github.com/Swagat-Mishra-Bose/ConstraintAPI.git', :tag => "#{spec.version}" }
  spec.source_files = 'ConstraintAPI/*.{swift}'
  spec.ios.deployment_target = "11.0"
  spec.requires_arc = true
end
