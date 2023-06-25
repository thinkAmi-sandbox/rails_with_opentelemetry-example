class ParentJob < ApplicationJob
  queue_as :default

  def perform(message)
    connection = Faraday.new('http://localhost:9001')
    connection.post('/messages') do |cn|
      cn.headers['Content-Type'] = 'application/json'
      cn.body = {message: message}.to_json
    end
  end
end
