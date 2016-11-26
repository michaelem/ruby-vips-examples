require "vips"

target_width = 1500
target_height = 1125

# load image to get metadata
image = Vips::Image.new_from_file("hello.jpg")

# determine by what factor we can shrink
if image.width/2 > target_width && image.height/2 > target_height
  shrink = 2
else
  shrink = 1
end

# pixel load and shrink
image = Vips::Image.new_from_file("hello.jpg", shrink: shrink)

# calculate the rest we need to scale
width_scale = target_width.to_f / image.width.to_f
height_scale = target_height.to_f / image.height.to_f

# scale the image
image = image.resize(width_scale, vscale: height_scale)

# write the final image
image.write_to_file "hello_#{target_width}x#{target_height}.jpg", Q: 85
