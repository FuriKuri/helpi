module Helpi
  module File
    class Reader
      def read(path)
        file = File.open(path, 'rb')
        file.read
      end
    end
  end
end