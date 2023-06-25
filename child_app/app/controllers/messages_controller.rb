class MessagesController < ApplicationController
  def index
    render json: {message: 'Hi from child'}
  end

  def create
    message = params[:message]

    logger.info('=== start ===============>')
    logger.info(message)
    logger.info('<== end   ================')
  end
end
