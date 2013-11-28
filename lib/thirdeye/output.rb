module Thirdeye
  class Output < Base
    class << self
      def all
        i3.get_outputs.collect do |op|
          self.new op['name']
        end
      end
    end

    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def active?
      data['active']
    end

    def primary?
      data['primary']
    end

    def current_workspace
      data['current_workspace']
    end

    protected
    def data
      i3.get_outputs.detect do |op|
        op['name'] == name
      end
    end
  end
end
