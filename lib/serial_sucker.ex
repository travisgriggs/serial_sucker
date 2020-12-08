defmodule SerialSucker do
  def main(_args) do
    # starts a process that will do UART stuff for us
    {:ok, pid} = Circuits.UART.start_link()
    # open our serial port using said process
    :ok = Circuits.UART.open(pid, "/dev/cu.usbserial-FTF8B23L", speed: 230_400, active: true)
    Process.sleep(5000)
    Circuits.UART.flush(pid)
  end
end
