# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dotenv-rails` gem.
# Please instead update this file by running `bin/tapioca gem dotenv-rails`.


# source://dotenv-rails//lib/dotenv/rails.rb#32
module Dotenv
  private

  # source://dotenv/2.8.1/lib/dotenv.rb#82
  def ignoring_nonexistent_files; end

  # source://dotenv/2.8.1/lib/dotenv.rb#68
  def instrument(name, payload = T.unsafe(nil), &block); end

  # source://dotenv/2.8.1/lib/dotenv.rb#13
  def load(*filenames); end

  # source://dotenv/2.8.1/lib/dotenv.rb#23
  def load!(*filenames); end

  # source://dotenv/2.8.1/lib/dotenv.rb#31
  def overload(*filenames); end

  # source://dotenv/2.8.1/lib/dotenv.rb#41
  def overload!(*filenames); end

  # source://dotenv/2.8.1/lib/dotenv.rb#49
  def parse(*filenames); end

  # source://dotenv/2.8.1/lib/dotenv.rb#76
  def require_keys(*keys); end

  # source://dotenv/2.8.1/lib/dotenv.rb#60
  def with(*filenames); end

  class << self
    # source://dotenv/2.8.1/lib/dotenv.rb#82
    def ignoring_nonexistent_files; end

    # source://dotenv/2.8.1/lib/dotenv.rb#68
    def instrument(name, payload = T.unsafe(nil), &block); end

    # source://dotenv/2.8.1/lib/dotenv.rb#8
    def instrumenter; end

    # source://dotenv/2.8.1/lib/dotenv.rb#8
    def instrumenter=(_arg0); end

    # source://dotenv/2.8.1/lib/dotenv.rb#13
    def load(*filenames); end

    # source://dotenv/2.8.1/lib/dotenv.rb#23
    def load!(*filenames); end

    # source://dotenv/2.8.1/lib/dotenv.rb#31
    def overload(*filenames); end

    # source://dotenv/2.8.1/lib/dotenv.rb#41
    def overload!(*filenames); end

    # source://dotenv/2.8.1/lib/dotenv.rb#49
    def parse(*filenames); end

    # source://dotenv/2.8.1/lib/dotenv.rb#76
    def require_keys(*keys); end

    # source://dotenv/2.8.1/lib/dotenv.rb#60
    def with(*filenames); end
  end
end

# Dotenv Railtie for using Dotenv to load environment from a file into
# Rails applications
#
# source://dotenv-rails//lib/dotenv/rails.rb#39
class Dotenv::Railtie < ::Rails::Railtie
  # Public: Load dotenv
  #
  # This will get called during the `before_configuration` callback, but you
  # can manually call `Dotenv::Railtie.load` if you needed it sooner.
  #
  # source://dotenv-rails//lib/dotenv/rails.rb#40
  def load; end

  # Public: Reload dotenv
  #
  # Same as `load`, but will override existing values in `ENV`
  #
  # source://dotenv-rails//lib/dotenv/rails.rb#47
  def overload; end

  # Internal: `Rails.root` is nil in Rails 4.1 before the application is
  # initialized, so this falls back to the `RAILS_ROOT` environment variable,
  # or the current working directory.
  #
  # source://dotenv-rails//lib/dotenv/rails.rb#54
  def root; end

  private

  # source://dotenv-rails//lib/dotenv/rails.rb#66
  def dotenv_files; end

  class << self
    # Rails uses `#method_missing` to delegate all class methods to the
    # instance, which means `Kernel#load` gets called here. We don't want that.
    #
    # source://dotenv-rails//lib/dotenv/rails.rb#60
    def load; end
  end
end
