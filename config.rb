activate :automatic_image_sizes
activate :livereload
activate :directory_indexes
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

data.coffee.austin.each do |shop|
  proxy "/#{shop.slug}.html",
    "/shop.html",
    :locals => {
      :shop => shop
    }
end

configure :build do
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
end
