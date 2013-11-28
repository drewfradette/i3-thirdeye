module Thirdeye
  class Window < Base
    class << self
      def all
        self.collect_nodes i3.get_tree['nodes']
      end

      protected
      def collect_nodes(nodes)
        windows = []
        nodes.each do |node|
          next if node['name'].start_with?('i3bar for output')
          windows << Window.new(node) if node['window']
          windows.concat(self.collect_nodes(node['nodes'])) unless node['nodes'].empty?
        end
        windows
      end
    end

    attr_accessor :data

    def initialize(node)
      @data = node
    end

    def id
      data['id']
    end

    def name
      data['name']
    end

    def focus
      i3.command "[con_id=#{window_id}] focus"
    end

    def data
      @data
    end
  end
end
