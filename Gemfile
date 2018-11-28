source 'https://rubygems.org'

gem 'devise'
gem 'pry-rails' # rails console을 이쁘게 함
gem 'bootstrap'

#devise views bootstrap
gem 'devise-bootstrap-views', '~> 1.0'
gem 'bootstrap_form', '>= 4.0.0alpha1'

# comment 관련 젬
gem 'acts_as_commentable' # 젬 사용안하고 구현하고 싶으면 https://gorails.com/episodes/comments-with-polymorphic-associations 참고

# follow 관련 젬
gem 'acts_as_follower', github: 'tcocca/acts_as_follower', branch: 'master'

gem 'carrierwave' # 이미지 파일을 업로드할 수 있게
gem 'mini_magick' # 들어온 이미지를 편집해줌
#-> imagemagick 을 미리 설치해둬야 bundle 이 가능함

gem 'country_select' # dropdown으로 나라들 select 해주는 젬

# gravatar gem : gravatar라는 사이트에 한번 가입하면 같은 이메일로 다른 사이트에 로그인 할 때 프로필 사진 공유할 수 있음
gem 'tinymce-rails' # 글쓰는 곳 꾸며주는 젬
gem 'bootstrap4-kaminari-views'
gem 'kaminari' # pagination 해주는 젬 (페이지를 나눠줌)
gem 'font-awesome-rails' # icon을 이름으로 불러올 수 있음


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.7'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do # 테스트, 개발환경
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :development do
  gem 'rails_db' #db볼 수 있는 거 
  gem 'listen', '~> 3.0.5'  
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do # 배포 환경
  gem 'pg'
end

