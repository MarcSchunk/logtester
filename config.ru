require 'cgi'

run Proc.new { |env|
  # sample log line
  logline = '{"someKey":"someValue","anotherKey":"value","message":"something not working"}'

  # log to stdout:
  puts "#{logline}"
  STDOUT.flush

  # HTTP response:
  ['200', {"Content-Type" => "text/plain"}, ["#{logline}\n"]]
}
