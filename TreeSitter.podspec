Pod::Spec.new do |s|
  s.name             = 'TreeSitter'
  s.version          = '0.20.8'
  s.summary          = 'Tree-sitter is a parser generator tool and an incremental parsing library.'
  s.description      = <<-DESC
                        Tree-sitter is a parser generator tool and an incremental parsing library. 
                        It can build a concrete syntax tree for a source file and efficiently update 
                        the syntax tree as the source file is edited. 
                     DESC
  s.homepage         = 'https://github.com/tree-sitter/tree-sitter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :git => 'https://github.com/tree-sitter/tree-sitter.git', :tag => s.version.to_s }
  s.swift_version    = '5.5'
  s.ios.deployment_target = '14.0'

  s.source_files     = 'tree-sitter/src/lib.c', 'tree-sitter/src/api.h', 'tree-sitter/src/parser.h'
  s.resources = 'tree-sitter/src/*.{h,c}'
 
end
