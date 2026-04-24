Pod::Spec.new do |s|
  s.name = 'ControlPanelSDK'
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'
  s.version = '1.0.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.0.0' }
  s.authors = 'Platon Technologies'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/platon-net/cp-swift-sdk'
  s.summary = 'Swift SDK for the Platon Control Panel API.'
  s.description = 'Generated Swift SDK for the Platon Control Panel API.'
  s.documentation_url = 'https://setup.platon.sk/api/openapi.json'
  s.source_files = 'Sources/ControlPanelSDK/**/*.swift'
end
