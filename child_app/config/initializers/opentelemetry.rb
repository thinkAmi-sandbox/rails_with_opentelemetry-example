# require 'opentelemetry/sdk'
# require 'opentelemetry/instrumentation/all'

ENV['OTEL_TRACES_EXPORTER'] = 'console'

OpenTelemetry::SDK.configure do |c|
  c.service_name = 'child_app'
  c.use_all() # enables all instrumentation!
end