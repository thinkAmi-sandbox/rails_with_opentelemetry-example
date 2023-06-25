class ApplicationController < ActionController::API
  before_action :log_http_headers
  before_action :log_all_http_headers

  private def log_http_headers
    logger.info('traceparent header ===============>')
    logger.info(request.headers['HTTP_TRACEPARENT'])
    logger.info('traceparent header <===============')
  end

  private def log_all_http_headers
    logger.info('all request header ===============>')
    request.headers.sort.map { |k, v| logger.info "#{k}:#{v}" }
    logger.info('all request header <===============')
  end
end
