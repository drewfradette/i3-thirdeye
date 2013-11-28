require 'i3-ipc'

require "thirdeye/version"
require 'thirdeye/base'
require 'thirdeye/workspace'
require 'thirdeye/output'
require 'thirdeye/window'

module Thirdeye
  def self.run(cmd)
    I3::IPC.new.command(cmd)
  end

  def self.dmenu(list = nil)
    `echo -e "#{list.join("\n")}" | dmenu -i`.strip
  end
end
