# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `enumerize` gem.
# Please instead update this file by running `bin/tapioca gem enumerize`.


# source://enumerize//lib/enumerize/version.rb#3
module Enumerize
  include ::Enumerize::Base

  mixes_in_class_methods ::Enumerize::Base::ClassMethods
  mixes_in_class_methods ::Enumerize::Predicates
  mixes_in_class_methods ::Enumerize::ActiveModelAttributesSupport
  mixes_in_class_methods ::Enumerize::ActiveRecordSupport
  mixes_in_class_methods ::Enumerize::Scope::ActiveRecord
  mixes_in_class_methods ::Enumerize::ModuleAttributes
  mixes_in_class_methods ::Enumerize::Base::ClassMethods::Hook

  class << self
    # @private
    #
    # source://enumerize//lib/enumerize.rb#35
    def extended(base); end

    # @private
    #
    # source://enumerize//lib/enumerize.rb#30
    def included(base); end
  end
end

# source://enumerize//lib/enumerize/activemodel.rb#4
module Enumerize::ActiveModelAttributesSupport
  # source://enumerize//lib/enumerize/activemodel.rb#5
  def enumerize(name, options = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/activemodel.rb#17
module Enumerize::ActiveModelAttributesSupport::InstanceMethods
  # https://github.com/brainspec/enumerize/issues/74
  #
  # source://enumerize//lib/enumerize/activemodel.rb#19
  def write_attribute(attr_name, value, *options); end
end

# source://enumerize//lib/enumerize/activemodel.rb#28
class Enumerize::ActiveModelAttributesSupport::Type < ::ActiveModel::Type::Value
  # @return [Type] a new instance of Type
  #
  # source://enumerize//lib/enumerize/activemodel.rb#33
  def initialize(attr); end

  # source://enumerize//lib/enumerize/activemodel.rb#42
  def deserialize(value); end

  # source://enumerize//lib/enumerize/activemodel.rb#37
  def serialize(value); end

  # source://enumerize//lib/enumerize/activemodel.rb#29
  def type; end
end

# source://enumerize//lib/enumerize/activerecord.rb#4
module Enumerize::ActiveRecordSupport
  # source://enumerize//lib/enumerize/activerecord.rb#5
  def enumerize(name, options = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/activerecord.rb#42
module Enumerize::ActiveRecordSupport::InstanceMethods
  # Support multiple enumerized attributes
  #
  # source://enumerize//lib/enumerize/activerecord.rb#53
  def becomes(klass); end

  # source://enumerize//lib/enumerize/activerecord.rb#66
  def reload(options = T.unsafe(nil)); end

  # https://github.com/brainspec/enumerize/issues/74
  #
  # source://enumerize//lib/enumerize/activerecord.rb#44
  def write_attribute(attr_name, value, *options); end
end

# source://enumerize//lib/enumerize/activerecord.rb#89
module Enumerize::ActiveRecordSupport::RelationMethods
  # source://enumerize//lib/enumerize/activerecord.rb#90
  def update_all(updates); end
end

# source://enumerize//lib/enumerize/activerecord.rb#103
class Enumerize::ActiveRecordSupport::Type < ::ActiveModel::Type::Value
  # @return [Type] a new instance of Type
  #
  # source://enumerize//lib/enumerize/activerecord.rb#106
  def initialize(attr, subtype); end

  # source://enumerize//lib/enumerize/activerecord.rb#124
  def as_json(options = T.unsafe(nil)); end

  # source://enumerize//lib/enumerize/activerecord.rb#118
  def deserialize(value); end

  # source://enumerize//lib/enumerize/activerecord.rb#128
  def encode_with(coder); end

  # source://enumerize//lib/enumerize/activerecord.rb#134
  def init_with(coder); end

  # source://enumerize//lib/enumerize/activerecord.rb#111
  def serialize(value); end

  # source://enumerize//lib/enumerize/activerecord.rb#104
  def type(*_arg0, **_arg1, &_arg2); end

  # source://enumerize//lib/enumerize/activerecord.rb#111
  def type_cast_for_database(value); end

  # source://enumerize//lib/enumerize/activerecord.rb#118
  def type_cast_from_database(value); end
end

# source://enumerize//lib/enumerize/attribute.rb#4
class Enumerize::Attribute
  # @raise [ArgumentError]
  # @return [Attribute] a new instance of Attribute
  #
  # source://enumerize//lib/enumerize/attribute.rb#7
  def initialize(klass, name, options = T.unsafe(nil)); end

  # Returns the value of attribute default_value.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def default_value; end

  # source://enumerize//lib/enumerize/attribute.rb#90
  def define_methods!(mod); end

  # source://enumerize//lib/enumerize/attribute.rb#51
  def each_value; end

  # source://enumerize//lib/enumerize/attribute.rb#35
  def find_default_value(value); end

  # source://enumerize//lib/enumerize/attribute.rb#43
  def find_value(value); end

  # source://enumerize//lib/enumerize/attribute.rb#47
  def find_values(*values); end

  # Returns the value of attribute i18n_scope.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def i18n_scope; end

  # source://enumerize//lib/enumerize/attribute.rb#55
  def i18n_scopes; end

  # Returns the value of attribute klass.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def klass; end

  # Returns the value of attribute name.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def name; end

  # source://enumerize//lib/enumerize/attribute.rb#65
  def options(options = T.unsafe(nil)); end

  # Returns the value of attribute skip_validations_value.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def skip_validations_value; end

  # Returns the value of attribute values.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def values; end

  private

  # source://enumerize//lib/enumerize/attribute.rb#135
  def method_missing(method); end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/attribute.rb#86
  def respond_to_missing?(method, include_private = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/attribute_map.rb#4
class Enumerize::AttributeMap
  # @return [AttributeMap] a new instance of AttributeMap
  #
  # source://enumerize//lib/enumerize/attribute_map.rb#7
  def initialize; end

  # source://enumerize//lib/enumerize/attribute_map.rb#16
  def <<(attr); end

  # source://enumerize//lib/enumerize/attribute_map.rb#12
  def [](name); end

  # source://enumerize//lib/enumerize/attribute_map.rb#33
  def add_dependant(dependant); end

  # Returns the value of attribute attributes.
  #
  # source://enumerize//lib/enumerize/attribute_map.rb#5
  def attributes; end

  # source://enumerize//lib/enumerize/attribute_map.rb#23
  def each; end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/attribute_map.rb#29
  def empty?; end
end

# source://enumerize//lib/enumerize/base.rb#4
module Enumerize::Base
  mixes_in_class_methods ::Enumerize::Base::ClassMethods
  mixes_in_class_methods ::Enumerize::Base::ClassMethods::Hook

  # source://enumerize//lib/enumerize/base.rb#52
  def initialize(*_arg0); end

  # source://enumerize//lib/enumerize/base.rb#57
  def read_attribute_for_validation(key); end

  private

  # source://enumerize//lib/enumerize/base.rb#71
  def _enumerized_values_for_validation; end

  # source://enumerize//lib/enumerize/base.rb#91
  def _set_default_value_for_enumerized_attributes; end

  # source://enumerize//lib/enumerize/base.rb#75
  def _validate_enumerized_attributes; end

  class << self
    # @private
    #
    # source://enumerize//lib/enumerize/base.rb#5
    def included(base); end
  end
end

# source://enumerize//lib/enumerize/base.rb#14
module Enumerize::Base::ClassMethods
  # source://enumerize//lib/enumerize/base.rb#15
  def enumerize(name, options = T.unsafe(nil)); end

  # source://enumerize//lib/enumerize/base.rb#30
  def enumerized_attributes; end

  private

  # source://enumerize//lib/enumerize/base.rb#43
  def _enumerize_module; end
end

# source://enumerize//lib/enumerize/base.rb#34
module Enumerize::Base::ClassMethods::Hook
  # source://enumerize//lib/enumerize/base.rb#35
  def inherited(subclass); end
end

# source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#4
module Enumerize::Integrations; end

# source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#5
module Enumerize::Integrations::RSpec
  # source://enumerize//lib/enumerize/integrations/rspec.rb#8
  def enumerize(attr); end
end

# source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#6
class Enumerize::Integrations::RSpec::Matcher
  # @return [Matcher] a new instance of Matcher
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#8
  def initialize(expected_attr); end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#50
  def description; end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#42
  def failure_message; end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#46
  def failure_message_when_negated; end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#12
  def in(*expected_values); end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#62
  def matches?(subject); end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#17
  def with_default(expected_default); end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#22
  def with_i18n_scope(expected_i18n_scope); end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#32
  def with_multiple(expected_multiple); end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#27
  def with_predicates(expected_predicates); end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#37
  def with_scope(expected_scope); end

  private

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#150
  def attributes; end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#142
  def enumerized_default; end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#146
  def enumerized_value_hash; end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#138
  def enumerized_values; end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#82
  def expectation; end

  # Returns the value of attribute expected_attr.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_attr; end

  # Sets the attribute expected_attr
  #
  # @param value the value to set the attribute expected_attr to.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_attr=(_arg0); end

  # Returns the value of attribute expected_default.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_default; end

  # Sets the attribute expected_default
  #
  # @param value the value to set the attribute expected_default to.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_default=(_arg0); end

  # Returns the value of attribute expected_i18n_scope.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_i18n_scope; end

  # Sets the attribute expected_i18n_scope
  #
  # @param value the value to set the attribute expected_i18n_scope to.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_i18n_scope=(_arg0); end

  # Returns the value of attribute expected_multiple.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_multiple; end

  # Sets the attribute expected_multiple
  #
  # @param value the value to set the attribute expected_multiple to.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_multiple=(_arg0); end

  # Returns the value of attribute expected_predicates.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_predicates; end

  # Sets the attribute expected_predicates
  #
  # @param value the value to set the attribute expected_predicates to.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_predicates=(_arg0); end

  # Returns the value of attribute expected_scope.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_scope; end

  # Sets the attribute expected_scope
  #
  # @param value the value to set the attribute expected_scope to.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_scope=(_arg0); end

  # Returns the value of attribute expected_values.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_values; end

  # Sets the attribute expected_values
  #
  # @param value the value to set the attribute expected_values to.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def expected_values=(_arg0); end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#94
  def matches_array_values?; end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#86
  def matches_attribute?; end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#103
  def matches_default_value?; end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#98
  def matches_hash_values?; end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#107
  def matches_i18n_scope?; end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#119
  def matches_multiple?; end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#111
  def matches_predicates?; end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#123
  def matches_scope?; end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#90
  def matches_values?; end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#158
  def quote_values(values); end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#134
  def sorted_values; end

  # Returns the value of attribute subject.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def subject; end

  # Sets the attribute subject
  #
  # @param value the value to set the attribute subject to.
  #
  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#78
  def subject=(_arg0); end

  # source://enumerize//lib/enumerize/integrations/rspec/matcher.rb#154
  def subject_class; end
end

# source://enumerize//lib/enumerize/module.rb#4
class Enumerize::Module < ::Module
  # @return [Module] a new instance of Module
  #
  # source://enumerize//lib/enumerize/module.rb#7
  def initialize; end

  # Returns the value of attribute _class_methods.
  #
  # source://enumerize//lib/enumerize/module.rb#5
  def _class_methods; end

  # source://enumerize//lib/enumerize/module.rb#25
  def dependent_eval(&block); end

  # source://enumerize//lib/enumerize/module.rb#15
  def included(klass); end
end

# source://enumerize//lib/enumerize/module_attributes.rb#4
module Enumerize::ModuleAttributes
  # source://enumerize//lib/enumerize/module_attributes.rb#5
  def included(base); end
end

# source://enumerize//lib/enumerize/mongoid.rb#4
module Enumerize::MongoidSupport
  # source://enumerize//lib/enumerize/mongoid.rb#5
  def enumerize(name, options = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/mongoid.rb#17
module Enumerize::MongoidSupport::InstanceMethods
  # source://enumerize//lib/enumerize/mongoid.rb#18
  def reload; end
end

# source://enumerize//lib/enumerize/attribute.rb#144
module Enumerize::Multiple
  # source://enumerize//lib/enumerize/attribute.rb#153
  def define_methods!(mod); end

  # source://enumerize//lib/enumerize/attribute.rb#145
  def find_default_value(value); end
end

# source://enumerize//lib/enumerize/predicatable.rb#4
module Enumerize::Predicatable
  private

  # source://enumerize//lib/enumerize/predicatable.rb#11
  def method_missing(method, *args, &block); end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/predicatable.rb#19
  def predicate_method?(method); end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/predicatable.rb#5
  def respond_to_missing?(method, include_private = T.unsafe(nil)); end
end

# Predicate methods.
#
# Basic usage:
#
#     class User
#       extend Enumerize
#       enumerize :sex, in: %w(male female), predicates: true
#     end
#
#     user = User.new
#
#     user.male?   # => false
#     user.female? # => false
#
#     user.sex = 'male'
#
#     user.male?   # => true
#     user.female? # => false
#
# Using prefix:
#
#     class User
#       extend Enumerize
#       enumerize :sex, in: %w(male female), predicates: { prefix: true }
#     end
#
#     user = User.new
#     user.sex = 'female'
#     user.sex_female? # => true
#
# Use <tt>only</tt> and <tt>except</tt> options to specify what values create
# predicate methods for.
#
# source://enumerize//lib/enumerize/predicates.rb#38
module Enumerize::Predicates
  # source://enumerize//lib/enumerize/predicates.rb#39
  def enumerize(name, options = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/predicates.rb#47
class Enumerize::Predicates::Builder
  # @return [Builder] a new instance of Builder
  #
  # source://enumerize//lib/enumerize/predicates.rb#48
  def initialize(attr, options); end

  # source://enumerize//lib/enumerize/predicates.rb#71
  def build(klass); end

  # source://enumerize//lib/enumerize/predicates.rb#67
  def names; end

  # source://enumerize//lib/enumerize/predicates.rb#53
  def values; end
end

# source://enumerize//lib/enumerize.rb#24
module Enumerize::Scope; end

# source://enumerize//lib/enumerize/scope/activerecord.rb#5
module Enumerize::Scope::ActiveRecord
  # source://enumerize//lib/enumerize/scope/activerecord.rb#6
  def enumerize(name, options = T.unsafe(nil)); end

  private

  # source://enumerize//lib/enumerize/scope/activerecord.rb#20
  def _define_activerecord_scope_methods!(name, options); end

  # source://enumerize//lib/enumerize/scope/activerecord.rb#40
  def _define_activerecord_shallow_scopes!(attribute_name); end
end

# source://enumerize//lib/enumerize/scope/mongoid.rb#5
module Enumerize::Scope::Mongoid
  # source://enumerize//lib/enumerize/scope/mongoid.rb#6
  def enumerize(name, options = T.unsafe(nil)); end

  private

  # source://enumerize//lib/enumerize/scope/mongoid.rb#20
  def _define_mongoid_scope_methods!(name, options); end

  # source://enumerize//lib/enumerize/scope/mongoid.rb#37
  def _define_mongoid_shallow_scopes!(attribute_name); end
end

# source://enumerize//lib/enumerize/scope/sequel.rb#5
module Enumerize::Scope::Sequel
  # source://enumerize//lib/enumerize/scope/sequel.rb#6
  def enumerize(name, options = T.unsafe(nil)); end

  private

  # source://enumerize//lib/enumerize/scope/sequel.rb#22
  def _define_sequel_scope_methods!(name, options); end

  # source://enumerize//lib/enumerize/scope/sequel.rb#43
  def _define_sequel_shallow_scopes!(attribute_name); end
end

# source://enumerize//lib/enumerize/sequel.rb#4
module Enumerize::SequelSupport
  # source://enumerize//lib/enumerize/sequel.rb#5
  def enumerize(name, options = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/sequel.rb#19
module Enumerize::SequelSupport::InstanceMethods
  # source://enumerize//lib/enumerize/sequel.rb#38
  def _set_default_value_for_enumerized_attributes; end

  # source://enumerize//lib/enumerize/sequel.rb#20
  def validate; end
end

# source://enumerize//lib/enumerize/set.rb#6
class Enumerize::Set
  include ::Prelude::Enumerator
  include ::Enumerable
  include ::Enumerize::Predicatable

  # @return [Set] a new instance of Set
  #
  # source://enumerize//lib/enumerize/set.rb#12
  def initialize(obj, attr, values); end

  # source://enumerize//lib/enumerize/set.rb#28
  def <<(value); end

  # source://enumerize//lib/enumerize/set.rb#47
  def ==(other); end

  # source://enumerize//lib/enumerize/set.rb#58
  def delete(value); end

  # source://enumerize//lib/enumerize/set.rb#35
  def each(*_arg0, **_arg1, &_arg2); end

  # source://enumerize//lib/enumerize/set.rb#35
  def empty?(*_arg0, **_arg1, &_arg2); end

  # source://enumerize//lib/enumerize/set.rb#67
  def encode_with(coder); end

  # source://enumerize//lib/enumerize/set.rb#47
  def eql?(other); end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/set.rb#54
  def include?(value); end

  # source://enumerize//lib/enumerize/set.rb#63
  def inspect; end

  # source://enumerize//lib/enumerize/set.rb#45
  def join(*_arg0, **_arg1, &_arg2); end

  # source://enumerize//lib/enumerize/set.rb#28
  def push(value); end

  # source://enumerize//lib/enumerize/set.rb#35
  def size(*_arg0, **_arg1, &_arg2); end

  # source://enumerize//lib/enumerize/set.rb#41
  def texts; end

  # source://enumerize//lib/enumerize/set.rb#37
  def to_ary; end

  # Returns the value of attribute values.
  #
  # source://enumerize//lib/enumerize/set.rb#10
  def values; end

  private

  # source://enumerize//lib/enumerize/set.rb#77
  def mutate!; end

  # source://enumerize//lib/enumerize/set.rb#73
  def predicate_call(value); end
end

# source://enumerize//lib/enumerize/utils.rb#4
module Enumerize::Utils
  class << self
    # source://enumerize//lib/enumerize/utils.rb#6
    def call_if_callable(value, param = T.unsafe(nil)); end
  end
end

# source://enumerize//lib/enumerize/version.rb#4
Enumerize::VERSION = T.let(T.unsafe(nil), String)

# source://enumerize//lib/enumerize/value.rb#7
class Enumerize::Value < ::String
  include ::Enumerize::Predicatable

  # @return [Value] a new instance of Value
  #
  # source://enumerize//lib/enumerize/value.rb#12
  def initialize(attr, name, value = T.unsafe(nil)); end

  # source://enumerize//lib/enumerize/value.rb#33
  def ==(other); end

  # source://enumerize//lib/enumerize/value.rb#37
  def encode_with(coder); end

  # source://enumerize//lib/enumerize/value.rb#29
  def text; end

  # Returns the value of attribute value.
  #
  # source://enumerize//lib/enumerize/value.rb#10
  def value; end

  private

  # source://enumerize//lib/enumerize/value.rb#43
  def predicate_call(value); end
end

# source://enumerize//lib/enumerize/integrations/rspec.rb#15
module RSpec; end

# source://enumerize//lib/enumerize/integrations/rspec.rb#16
module RSpec::Matchers
  include ::Enumerize::Integrations::RSpec

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_block_changing(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_block_outputting(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_block_raising(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_block_throwing(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_block_yielding_control(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_block_yielding_successive_args(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_block_yielding_with_args(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_block_yielding_with_no_args(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_collection_containing_exactly(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_collection_ending_with(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_collection_including(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_collection_starting_with(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_falsey_value(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_falsy_value(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_hash_including(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_kind_of(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_nil_value(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_range_covering(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_string_ending_with(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_string_including(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_string_matching(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_string_starting_with(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_truthy_value(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_value(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_value_between(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def a_value_within(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#305
  def aggregate_failures(label = T.unsafe(nil), metadata = T.unsafe(nil), &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#662
  def all(expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def an_instance_of(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def an_object_eq_to(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def an_object_eql_to(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def an_object_equal_to(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def an_object_existing(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def an_object_having_attributes(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def an_object_matching(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def an_object_responding_to(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def an_object_satisfying(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#349
  def be(*args); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#355
  def be_a(klass); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#378
  def be_a_kind_of(expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#355
  def be_an(klass); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#366
  def be_an_instance_of(expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#395
  def be_between(min, max); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#316
  def be_falsey; end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def be_falsy(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#366
  def be_instance_of(expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#378
  def be_kind_of(expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#324
  def be_nil; end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#310
  def be_truthy; end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#405
  def be_within(delta); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#492
  def change(receiver = T.unsafe(nil), message = T.unsafe(nil), &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def changing(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#510
  def contain_exactly(*items); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def containing_exactly(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#528
  def cover(*values); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def covering(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#543
  def end_with(*expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def ending_with(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#558
  def eq(expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def eq_to(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#572
  def eql(expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def eql_to(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#586
  def equal(expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def equal_to(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#596
  def exist(*args); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def existing(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#616
  def have_attributes(expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def having_attributes(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#639
  def include(*expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def including(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#697
  def match(expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#715
  def match_array(items); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def match_regex(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def matching(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#749
  def output(expected = T.unsafe(nil)); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#770
  def raise_error(error = T.unsafe(nil), message = T.unsafe(nil), &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#770
  def raise_exception(error = T.unsafe(nil), message = T.unsafe(nil), &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def raising(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#789
  def respond_to(*names); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def responding_to(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#810
  def satisfy(description = T.unsafe(nil), &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def satisfying(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#825
  def start_with(*expected); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def starting_with(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#847
  def throw_symbol(expected_symbol = T.unsafe(nil), expected_arg = T.unsafe(nil)); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def throwing(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def within(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#868
  def yield_control; end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#937
  def yield_successive_args(*args); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#916
  def yield_with_args(*args); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#886
  def yield_with_no_args; end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def yielding_control(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def yielding_successive_args(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def yielding_with_args(*args, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers/dsl.rb#38
  def yielding_with_no_args(*args, &block); end

  private

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#958
  def method_missing(method, *args, **_arg2, &block); end

  # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#971
  def respond_to_missing?(method, *_arg1); end

  class << self
    # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#250
    def alias_matcher(*args, &block); end

    # source://rspec-expectations/3.11.1/lib/rspec/matchers/generated_descriptions.rb#11
    def clear_generated_description; end

    # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#948
    def configuration; end

    # source://rspec-expectations/3.11.1/lib/rspec/matchers/generated_descriptions.rb#19
    def generated_description; end

    # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#1005
    def is_a_describable_matcher?(obj); end

    # source://rspec-expectations/3.11.1/lib/rspec/matchers.rb#985
    def is_a_matcher?(obj); end

    # source://rspec-expectations/3.11.1/lib/rspec/matchers/generated_descriptions.rb#25
    def last_description; end

    # source://rspec-expectations/3.11.1/lib/rspec/matchers/generated_descriptions.rb#5
    def last_expectation_handler; end

    # source://rspec-expectations/3.11.1/lib/rspec/matchers/generated_descriptions.rb#5
    def last_expectation_handler=(_arg0); end

    # source://rspec-expectations/3.11.1/lib/rspec/matchers/generated_descriptions.rb#5
    def last_matcher; end

    # source://rspec-expectations/3.11.1/lib/rspec/matchers/generated_descriptions.rb#5
    def last_matcher=(_arg0); end
  end
end
