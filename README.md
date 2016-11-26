# A collection of examples for using ruby-vips
This small collection contains some very simple examples on how one could use [ruby-vips](https://github.com/jcupitt/ruby-vips).

## Setup
To run these examples you need to have a recent version (at least 8.3) of [libvips](https://github.com/jcupitt/libvips) installed. If you are using macOS and Homebrew you can use the Brewfile to install it.
You should have a fairly recent ruby version and the bundler gem installed. Then just run `bundle install` to install all dependencies.
Note: if you are on macOs and use Homebrew you might run into issues with bundler not beeing able to find some dependencies for the native extensions. In that case try running `PKG_CONFIG_PATH=/usr/local/opt/libffi/lib/pkgconfig:/usr/local/opt/libxml2/lib/pkgconfig:$PKG_CONFIG_PATH bundle install`.

## Running the examples
If you have successfully installed the dependencies you can run the examples:
```
bundle exec ruby 1_load_image.rb
```
