require 'thor'
module VideoSprites
  class CLI < Thor

    desc "process <input_file> <output_directory>", "Create video thumbnail sprites"
    option :seconds,     default: 10,  type: :numeric
    option :width,       default: 200, type: :numeric
    option :columns,     default: 5,   type: :numeric
    option :group,       default: 20,  type: :numeric
    option :gif,         default: false, type: :boolean
    option :keep_images, default: false, type: :boolean
    option :basename,    default: nil,  type: :string
    def process(input_file, output_directory)
      processor = VideoSprites::Processor.new(input_file, output_directory, options)
      processor.process
    end

  end
end
