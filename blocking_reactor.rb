module Echo
  def receive_data(data)
    message = parse_data(data)
    return if invalid_message(message)?

    device = Device.find(message.device_id)
    device.update(position: message.position)
    send_data :updated
  end
end

EM.run {
  EM.start_server "0.0.0.0", 1337, Echo
}
