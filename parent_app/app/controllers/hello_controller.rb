class HelloController < ApplicationController
  def index
    render json: {message: 'hello'}
  end

  def message_from_child
    response = Faraday.get('http://localhost:9001/messages')
    render json: {message: response.body}
  end

  def child_and_job
    Faraday.get('http://localhost:9001/messages')

    ParentJob.perform_later('hi')

    render json: {message: 'done'}
  end
end
