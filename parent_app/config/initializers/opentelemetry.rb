# for console settings
# ENV['OTEL_TRACES_EXPORTER'] = 'console'

OpenTelemetry::SDK.configure do |c|
  c.service_name = 'parent_app'
  c.use_all() # enables all instrumentation!
end