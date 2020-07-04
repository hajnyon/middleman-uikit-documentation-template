# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions
activate :directory_indexes
activate :syntax do |syntax|
    syntax.css_class = "syntax-highlight"
  end
activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

set :markdown, tables: true, autolink: true, gh_blockcode: true, fenced_code_blocks: true, with_toc_data: true
set :markdown_engine, :redcarpet

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  set :build_dir, 'public'

  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end

# With alternative layout
page '/', layout: 'home'
page '/docs/*', layout: 'documentation'
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings
