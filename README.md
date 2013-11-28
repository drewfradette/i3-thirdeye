# Thirdeye

A ruby framework for simplifying i3wm scripting.

## Installation

Add this line to your application's Gemfile:

    gem 'thirdeye'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thirdeye

## Usage

Several scripts are provided with the gem in `bin/`.

  * `i3-window-jump`<sup>1</sup> - Jumps to an open window.
  * `i3-windows` - A listing of each window's name.
  * `i3-workspace-jump`<sup>1</sup> - Jump to an existing or new workspace.
  * `i3-workspace-swap` - Switches two workspaces between outputs. Multi-monitor only.
  * `i3-workspaces` - A listing of each workspace. Prefers the workspace's name over number.

  <sup>1</sup>: Relies on `dmenu`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
