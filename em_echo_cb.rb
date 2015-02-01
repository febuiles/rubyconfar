module Echo
  def post_init
    puts "Client connected"
  end

  def receive_data(message)
    send_data "> #{message}"
  end

  def unbind
    puts "Client disconnected"
  end
end

EM.run {
  EM.start_server "0.0.0.0", 1333, Echo
}


``
