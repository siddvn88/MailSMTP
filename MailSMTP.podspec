Pod::Spec.new do |s|
s.name             = "MailSMTP"
s.version          = "0.0.1"
s.summary          = "Mail SMTP sumary"

s.homepage         = "https://github.ibm.com/Catalyst/ibmcatalyst-smtp-iosnative"
s.license          = 'MIT'
s.author           = { "Si Do Dinh" => "sid2@vn.ibm.com" }
s.source           = { :git => "https://github.ibm.com/Catalyst/ibmcatalyst-smtp-iosnative.git", :tag => "#{s.version}" }

s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'Pod/Classes/**/*'

end