# VideoSprites

Creates thumbnail sprite images and a WebVTT metadata file that can be used within several HTML5 video players to show preview thumbnails when hovering over the video time rail.

The initial version [video-sprites](https://github.com/jronallo/video-sprites) was written during an [AMIA](http://www.amianet.org/) hack day by Ashley Blewer, Jay Brown, Jason Ronallo, and Nicholas Zoss. This version improves on the CLI and allows it to be used as a module in other projects.

## Requirements

- ffmpeg
- Imagemagick (convert and montage)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'video_sprites'
```

And then execute:

`$ bundle`

Or install it yourself as:

`$ gem install video_sprites`

## Usage

### Use in Command Line
See usage with: `videosprites help process`

Try it out with the defaults on one of the test videos in this repository under test/videos:

`videosprites process test/videos/GibraltarVotesToRemainBritish1967-51sec.mp4 tmp/gibraltar`

Or create sprites that better match your use case:

`videosprites process test/videos/GibraltarVotesToRemainBritish1967-51sec.mp4 tmp/gibraltar2 --seconds=5 --width=150 --columns=3 --group=6 --basename=newbasename`

You can also make an animated GIF from all the selected frames using the same size as the thumbnails by adding the `--gif` option.

### Use as Gem
To use the project as a module in your own video processing workflow you can use it like this:

```ruby
input_file = '/path/to/video.mp4'
output_directory = '/path/to/tmp/gibraltar2'
options = {
  seconds: 10,
  width: 160,
  columns: 4,
  group: 20,
  gif: false,
  keep_images: false,
  basename: 'filename' # Base filename for outputs. Optional; default is "sprites".
}
processor = VideoSprites::Processor.new(input_file, output_directory, options)
processor.process
```

## Players

The following players provide a way to use WebVTT files and images sprites. Note that the WebVTT and thumbnails provided by VideoSprites may not have been tested in all players. Please file an issue if you find an incompatibility with any player.

- [JW Player](https://support.jwplayer.com/customer/portal/articles/1407439-adding-preview-thumbnails)
- [THEOplayer](https://support.theoplayer.com/hc/en-us/articles/207460505-Preview-Thumbnails)
- [Radiant Media Player](https://www.radiantmediaplayer.com/docs/3.0/preview-thumbnails.html)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/video_sprites.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
