module Thirdeye
  class Workspace < Base
    class << self
      def all
        i3.get_workspaces.collect do |ws|
          self.new(ws['num'] || ws['name'])
        end
      end

      def list
        self.all.collect{|ws| ws.name || ws.num}
      end
    end

    attr_accessor :id

    def initialize(id)
      @id = id
    end

    def focused?
      data['focused']
    end

    def exists?
      !data.nil?
    end

    def visible?
      data['visible']
    end

    def urgent?
      data['urgent']
    end

    def output
      data['output']
    end

    def num
      data['num']
    end

    def name
      data['name']
    end

    protected

    def data
      i3.get_workspaces.detect do |ws|
        [ws['num'],ws['name']].include? id
      end
    end
  end
end
