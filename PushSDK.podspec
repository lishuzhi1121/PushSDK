Pod::Spec.new do |s|
  s.name                  = 'PushSDK'
  s.version               = "1.0.0"
  s.summary               = 'mob.com 官方提供的推送SDK'
  s.license               = 'MIT'
  s.author                = { "lishuzhi1121" => "lishuzhi1121@163.com" }

  s.homepage              = 'http://www.sandslee.com'
  s.source                = { :git => 'https://github.com/lishuzhi1121/PushSDK.git', :tag => s.version.to_s }
  s.platform              = :ios
  s.ios.deployment_target = "8.0"
  s.default_subspecs      = 'MobPush'
  s.dependency 'MOBFoundation'
  s.static_framework = true

  s.subspec 'MobPush' do |sp|
      sp.vendored_frameworks   = 'MobPush/MobPush.framework','MobPush/MobPushServiceExtension.framework'
  end

end
