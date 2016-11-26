require "vips"

# pixel load and shrink
image = Vips::Image.new_from_file("hello.jpg", shrink: 2)

# write the image to a file with jpeg quality 85
image.write_to_file "hello_half.jpg", Q: 85
