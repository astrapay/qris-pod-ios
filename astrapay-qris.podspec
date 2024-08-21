Pod::Spec.new do |spec|

  spec.name         = "astrapay-qris"
  spec.version = "0.2.0"
  spec.summary      = "AstraPay Qris SDK"

  spec.description  = <<-DESC
AstraPay Qris SDK simplifies the integration of QRIS payments and top-up functionality into mobile and web applications.
                   DESC

  spec.homepage      = "https://github.com/astrapay/qris-pod-ios"
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }

  spec.platform         = :ios, '11.0'
  
  # Xcode configurations for user targets and the pod target
  spec.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'GENERATE_INFOPLIST_FILE' => 'YES'
  }

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'GENERATE_INFOPLIST_FILE' => 'YES'
  }

  spec.author       = { "Astrapay" => "devops@astrapay.com" }
  spec.source       = { :git => "https://github.com/astrapay/qris-pod-ios.git", :tag => spec.version.to_s }

  #spec.dependency 'Factory', '1.2.8'
  
  spec.ios.deployment_target     = '13.0'

  spec.swift_version        = "5.3"
  spec.vendored_frameworks  = 'AstraPayQrisSdk.xcframework'

end
