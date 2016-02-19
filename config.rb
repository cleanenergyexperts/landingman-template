###
# LandingMan Static Site
###
activate :directory_indexes
activate :landingman_directories
activate :landingman_data
activate :landingman_landings
activate :landingman_dotenv
activate :landingman_deploy
activate :landingman_helpers
activate :landingman_showcase

###
# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
###
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }


###
# Development
###
configure :development do
  # Reload the browser automatically whenever files change
  # activate :livereload, js_host: '127.0.0.1'
end

# Build-specific configuration
configure :build do
  activate :scss_lint, fail_build: false

  # Minify Assets
  activate :minify_html, remove_comments: false
  activate :minify_css
  activate :minify_javascript
  activate :autoprefixer
  activate :imageoptim

	# Enable cache buster
  activate :asset_hash

  # Favicon Generator: _favicon_template.png
  activate :favicon_maker

  # GZIP Text Files
  activate :gzip
end
