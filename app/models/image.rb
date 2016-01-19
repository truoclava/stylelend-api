class Image < ActiveRecord::Base
  def self.parse(params)
    max_dimensions = params[:image][:max_dimensions].split(", ")

    image_dimensions = params[:image][:dimensions].split(", ")
    image_array = image_dimensions.each_slice(2).to_a

    image_array.each do |image|
      @image = Image.new
      @image.width = image[0].to_f
      @image.height = image[1].to_f
      @image.max_width = max_dimensions[0].to_f
      @image.max_height = max_dimensions[1].to_f
      @image.scale
    end
  end


  def scale
    if (self.width > self.max_width) || (self.height > self.max_height)
      ratio1 = self.max_width/self.width
      ratio2 = self.max_height/self.height.to_f
      ratio = [ratio1, ratio2].min

      self.scaled_width = (width*ratio).round
      self.scaled_height = (width*ratio).round
    else
      self.scaled_width = self.width
      self.scaled_height = self.height
    end
    self.save
  end

end
