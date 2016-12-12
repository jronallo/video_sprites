module VideoSprites
  class Processor
    def initialize(input_file, output_directory, options=nil)
      @input_file = input_file
      @output_directory = output_directory
      @options = options || default_options
    end

    def process
      create_temporary_directory
      create_images
      create_sprites
      create_webvtt
    end

    def create_temporary_directory
      @temporary_directory = Dir.mktmpdir
      puts @temporary_directory
    end

    def create_images
      # run ffmpeg command
      `#{ffmpeg_cmd}`
    end

    def create_sprites
      # determine how many images go in each sprite

      # Create
    end

    def create_webvtt
      #code
    end

    def ffmpeg_cmd
      %Q|ffmpeg -i "#{@input_file}" -vf fps=1/#{@options[:seconds]} #{thumbnail_image_path} |
    end

    def thumbnail_image_path
      File.join @temporary_directory, 'img-%05d.jpg'
    end

    def default_options
      {
        seconds: 10,
        width:   200,
        columns: 5,
        group:   20
      }
    end
  end
end
