# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `prelude-batch-loader` gem.
# Please instead update this file by running `bin/tapioca gem prelude-batch-loader`.


class ActiveRecord::Base
  include ::ActiveModel::ForbiddenAttributesProtection
  include ::ActiveModel::AttributeAssignment
  include ::ActiveModel::Serialization
  include ::Prelude::Preloadable
  extend ::ByStar::Between
  extend ::ByStar::Directional
  extend ::ByStar::Base
  extend ::Prelude::Preloadable::ClassMethods
end

module Enumerable
  include ::Prelude::Enumerator
  extend ::ActiveSupport::EnumerableCoreExt::Constants
end

class Enumerator
  include ::Enumerable
  include ::Prelude::Enumerator
end

# source://prelude-batch-loader//lib/prelude/version.rb#1
module Prelude
  class << self
    # source://prelude-batch-loader//lib/prelude.rb#12
    def preload(records, method); end

    # source://prelude-batch-loader//lib/prelude.rb#7
    def wrap(records); end
  end
end

# source://prelude-batch-loader//lib/prelude/enumerator.rb#2
module Prelude::Enumerator
  # @raise [TypeMismatch]
  #
  # source://prelude-batch-loader//lib/prelude/enumerator.rb#5
  def with_prelude; end
end

# source://prelude-batch-loader//lib/prelude/enumerator.rb#3
class Prelude::Enumerator::TypeMismatch < ::StandardError; end

# source://prelude-batch-loader//lib/prelude/method.rb#2
class Prelude::Method
  # @return [Method] a new instance of Method
  #
  # source://prelude-batch-loader//lib/prelude/method.rb#3
  def initialize(&blk); end

  # source://prelude-batch-loader//lib/prelude/method.rb#7
  def call(*args); end
end

# source://prelude-batch-loader//lib/prelude/preloadable.rb#5
module Prelude::Preloadable
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::Prelude::Preloadable::ClassMethods

  # source://prelude-batch-loader//lib/prelude/preloadable.rb#10
  def preloaded_values; end

  # Sets the attribute prelude_preloader
  #
  # @param value the value to set the attribute prelude_preloader to.
  #
  # source://prelude-batch-loader//lib/prelude/preloadable.rb#8
  def prelude_preloader=(_arg0); end

  # source://prelude-batch-loader//lib/prelude/preloadable.rb#14
  def set_preloaded_value_for(name, args, result); end
end

# source://prelude-batch-loader//lib/prelude/preloadable.rb#0
module Prelude::Preloadable::ClassMethods
  # source://prelude-batch-loader//lib/prelude/preloadable.rb#26
  def define_prelude(name, &blk); end

  # source://prelude-batch-loader//lib/prelude/preloadable.rb#21
  def prelude_methods; end
end

# source://prelude-batch-loader//lib/prelude/preloader.rb#2
class Prelude::Preloader
  # @return [Preloader] a new instance of Preloader
  #
  # source://prelude-batch-loader//lib/prelude/preloader.rb#3
  def initialize(klass, records); end

  # source://prelude-batch-loader//lib/prelude/preloader.rb#8
  def fetch(name, *args); end

  private

  # Preload the given field with the given args for all records
  #
  # source://prelude-batch-loader//lib/prelude/preloader.rb#23
  def preload(method, args); end
end

# source://prelude-batch-loader//lib/prelude/version.rb#2
Prelude::VERSION = T.let(T.unsafe(nil), String)
