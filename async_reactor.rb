server = AsyncTCPServer.new(1337)

server.on(:accept) {
  message = client.async_read

  message.on(:ready) {
    client.write "> #{message}"
    client.close
  }
}

server.on(:connect) {
  puts "Client connected"
}

server.on(:disconnect) {
  puts "Client disconnected"
}
3
