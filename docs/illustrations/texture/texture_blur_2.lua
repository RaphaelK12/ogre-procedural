buffer = Procedural.TextureBuffer(128)
Procedural.Image(buffer):setFile("red_brick.jpg"):process()
Procedural.Blur(buffer):setType(Procedural.Blur_BLUR_GAUSSIAN):process()
tests:addTextureBuffer(buffer)
dotfile = tests:getDotFile("texture_05b", "Blur_Gaussian_Demo")
dotfile:set("Image", "texture_image", "Blur", "texture_blur_2")
