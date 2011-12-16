
use Rack::Static,
  :urls => ["/images", "/js", "/less"],
  :root => "public"

rub lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=864000'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

