Pod::Spec.new do |s|
  s.name             = 'Runestone'
  s.version          = '0.3.0'
  s.summary          = 'A performant plain text editor for iOS with code editing features.'
  s.description      = <<-DESC
                        Runestone - a performant plain text editor for iOS with code editing features.
                        Runestone uses GitHub's Tree-sitter to parse code to a syntax tree which is used for features 
                        that require an understanding of the code in the editor, for example syntax highlighting.
                     DESC
  s.homepage         = 'https://github.com/simonbs/Runestone'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :git => 'https://github.com/simonbs/Runestone.git', :tag => s.version.to_s }
  s.swift_version    = '5.5'
  s.ios.deployment_target = '14.0'
  s.module_name      = 'Runestone'

  s.source_files     = 'Sources/Runestone/**/*.{swift}'
  s.exclude_files    = 'Sources/Runestone/Documentation.docc/**/*'
  s.resources        = 'Sources/Runestone/TextView/Appearance/Theme.xcassets'
  s.requires_arc     = true

  s.dependency 'TreeSitter'
  
  # Note: make sure to use the `resource_bundle` and not the `resources` directive
  s.resource_bundles = {
    'Runestone_Runstone' => [ # Match the name SPM Generates
       'Sources/Runestone/TextView/Appearance/Theme.xcassets'
    ]
  }
end
