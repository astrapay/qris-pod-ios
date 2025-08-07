Pod::Spec.new do |spec|

  spec.name         = "astrapay-qris"
  spec.version = "1.0.26"
  spec.summary      = "AstraPay Qris SDK"

  spec.description  = <<-DESC
AstraPay Qris SDK simplifies the integration of QRIS payments and top-up functionality into mobile and web applications.
                   DESC

  spec.homepage      = "https://github.com/astrapay/qris-pod-ios"
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  
  # Xcode configurations for user targets and the pod target
  spec.user_target_xcconfig = {
    'GENERATE_INFOPLIST_FILE' => 'YES'
  }

  spec.pod_target_xcconfig = {
    'GENERATE_INFOPLIST_FILE' => 'YES'
  }

  spec.author       = { "Astrapay" => "devops@astrapay.com" }
  spec.source       = { :git => "https://github.com/astrapay/qris-pod-ios.git", :tag => spec.version.to_s }

  
  spec.ios.deployment_target     = '11.0'

  spec.swift_version        = "5.3"
  spec.vendored_frameworks  = 'AstraPayQrisSdk.xcframework'

end