require "vips"

image = Vips::Image.new_from_file("hello.jpg")

# you can read all header data without triggering a pixel load
puts image.height
