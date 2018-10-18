# Uncomment this line to define a global platform for your project
platform :ios, '9.0'
use_frameworks!

def project_pods
    react_path = './node_modules/react-native'
    yoga_path = File.join(react_path, 'ReactCommon/yoga')

    pod 'React', :path => './node_modules/react-native', :subspecs => [
    'Core',
    'DevSupport',
    'BatchedBridge',
    'RCTText',
    'RCTNetwork',
    'RCTWebSocket',
    'RCTImage',
    ]
    pod 'yoga', :path => yoga_path
    pod 'RNFS', :path => './node_modules/react-native-fs'
    pod 'react-native-webrtc', :path => './node_modules/react-native-webrtc'
    pod 'RNDeviceInfo', :path => './node_modules/react-native-device-info'
    pod 'RNSqlite2', :path => './node_modules/react-native-sqlite-2/ios/'
    pod 'RNViewShot', :path => './node_modules/react-native-view-shot/'
    pod 'CRToast'
    pod 'SVProgressHUD'
end

target 'Client' do
    project_pods

	pod 'KKDomain', :git => 'https://github.com/kejinlu/KKDomain.git'
	pod 'AWSCore', '~> 2.6'
	pod 'AWSSNS', '~> 2.6'
	pod 'RxSwift', '~> 4.0'
    	pod 'RealmSwift', '~> 3.3.0'
	pod 'Charts', '~> 3.0.1'
end

target 'Storage' do
    pod 'RealmSwift'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
            config.build_settings['DEBUG_INFORMATION_FORMAT'] = 'dwarf'
            if target.name == 'Charts' then
                config.build_settings['SWIFT_VERSION'] = '4.0'
            end
        end
    end
end
