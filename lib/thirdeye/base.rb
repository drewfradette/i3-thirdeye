module Thirdeye
  class Base
    class << self
      def i3
        @@i3 ||= I3::IPC.new
      end
    end

    def i3
      @i3 ||= I3::IPC.new
    end
  end
end
