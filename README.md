# Docker for composer install and laravel install

# How to config laravel
  1. Run -> composer global require "laravel/installer"
  2. Run -> nano .bashrc
  3. Then add -> export PATH="$PATH:$HOME/.config/composer/vendor/bin"
  4. Then add -> export PATH="$HOME/.composer/vendor/bin:$PATH" **for ubuntu 18.04
  5. Run -> source ~/.bashrc

# If we don't want to use laravel command use
  Run -> composer create-project --prefer-dist laravel/laravel blog

# Install lumen for make api
  composer create-project --prefer-dist laravel/lumen blog
  
