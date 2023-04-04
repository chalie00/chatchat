platform :ios, '12.0'

target 'Flash Chat iOS13' do
  use_frameworks!

  # Pods for Flash Chat iOS13
  
  pod 'FirebaseAuth'
  pod 'FirebaseFirestore'
  pod 'FirebaseStorage'
  
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
        if target.name == 'Realm'
          create_symlink_phase = target.shell_script_build_phases.find { |x| x.name == 'Create Symlinks to Header Folders' }
          create_symlink_phase.always_out_of_date = "1"
        
        end
      end
    end
  end
end
