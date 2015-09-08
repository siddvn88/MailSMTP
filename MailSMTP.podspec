Pod::Spec.new do |s|
s.name             = "MailSMTP"
s.version          = "0.0.2"
s.summary          = "Mail SMTP sumary"

s.homepage         = "https://github.com/siddvn88/MailSMTP"
s.license          = 'MIT'
s.author           = { "Si Do Dinh" => "sidd.vn88@gmail.com" }
s.source           = { :git => "https://github.com/siddvn88/MailSMTP.git", :tag => "#{s.version}" }

s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'Pod/Classes/**/*'

end