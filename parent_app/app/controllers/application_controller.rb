class ApplicationController < ActionController::API
  before_action :log_http_headers

  private def log_http_headers
    logger.info('traceparent header ===============>')
    logger.info(request.headers['HTTP_TRACEPARENT'])
    logger.info('traceparent header <===============')
  end
end
