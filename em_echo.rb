module Echo
  def receive_data(message)
    send_data "> #{message}"
  end
end

EM.run {
  EM.start_server "0.0.0.0", 1333, Echo
}
