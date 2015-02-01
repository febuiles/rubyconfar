module Graham
  def receive_data(number)
    calculate = proc {
      graham(number)
    }

    report = proc { |result|
      send_data(result)
    }

    EM.defer(calculate, report)
  end
end
