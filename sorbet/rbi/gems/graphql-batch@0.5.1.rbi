# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `graphql-batch` gem.
# Please instead update this file by running `bin/tapioca gem graphql-batch`.


# source://graphql-batch//lib/graphql/batch.rb#4
module GraphQL
  class << self
    # source://graphql/1.12.14/lib/graphql.rb#172
    def const_missing(const_name); end

    # source://graphql/1.12.14/lib/graphql.rb#24
    def default_parser; end

    # source://graphql/1.12.14/lib/graphql.rb#28
    def default_parser=(_arg0); end

    # source://graphql/1.12.14/lib/graphql.rb#34
    def parse(graphql_string, tracer: T.unsafe(nil)); end

    # source://graphql/1.12.14/lib/graphql.rb#41
    def parse_file(filename); end

    # source://graphql/1.12.14/lib/graphql.rb#46
    def parse_with_racc(string, filename: T.unsafe(nil), tracer: T.unsafe(nil)); end

    # source://graphql/1.12.14/lib/graphql.rb#51
    def scan(graphql_string); end

    # source://graphql/1.12.14/lib/graphql.rb#55
    def scan_with_ragel(graphql_string); end
  end
end

# source://graphql-batch//lib/graphql/batch.rb#5
module GraphQL::Batch
  class << self
    # source://graphql-batch//lib/graphql/batch.rb#9
    def batch(executor_class: T.unsafe(nil)); end

    # source://graphql-batch//lib/graphql/batch.rb#18
    def use(schema_defn, executor_class: T.unsafe(nil)); end
  end
end

# source://graphql-batch//lib/graphql/batch.rb#6
GraphQL::Batch::BrokenPromiseError = Promise::BrokenError

# source://graphql-batch//lib/graphql/batch/executor.rb#2
class GraphQL::Batch::Executor
  # @return [Executor] a new instance of Executor
  #
  # source://graphql-batch//lib/graphql/batch/executor.rb#35
  def initialize; end

  # source://graphql-batch//lib/graphql/batch/executor.rb#76
  def around_promise_callbacks; end

  # source://graphql-batch//lib/graphql/batch/executor.rb#64
  def clear; end

  # source://graphql-batch//lib/graphql/batch/executor.rb#72
  def decrement_level; end

  # source://graphql-batch//lib/graphql/batch/executor.rb#68
  def increment_level; end

  # source://graphql-batch//lib/graphql/batch/executor.rb#41
  def loader(key); end

  # Set to true when performing a batch query, otherwise, it is false.
  #
  # Can be used to detect unbatched queries in an ActiveSupport::Notifications.subscribe block.
  #
  # source://graphql-batch//lib/graphql/batch/executor.rb#33
  def loading; end

  # source://graphql-batch//lib/graphql/batch/executor.rb#48
  def resolve(loader); end

  # source://graphql-batch//lib/graphql/batch/executor.rb#56
  def tick; end

  # source://graphql-batch//lib/graphql/batch/executor.rb#60
  def wait_all; end

  class << self
    # source://graphql-batch//lib/graphql/batch/executor.rb#7
    def current; end

    # source://graphql-batch//lib/graphql/batch/executor.rb#11
    def current=(executor); end

    # source://graphql-batch//lib/graphql/batch/executor.rb#20
    def end_batch; end

    # source://graphql-batch//lib/graphql/batch/executor.rb#15
    def start_batch(executor_class); end
  end
end

# source://graphql-batch//lib/graphql/batch/executor.rb#3
GraphQL::Batch::Executor::THREAD_KEY = T.let(T.unsafe(nil), Symbol)

# source://graphql-batch//lib/graphql/batch/loader.rb#2
class GraphQL::Batch::Loader
  # Returns the value of attribute executor.
  #
  # source://graphql-batch//lib/graphql/batch/loader.rb#45
  def executor; end

  # Sets the attribute executor
  #
  # @param value the value to set the attribute executor to.
  #
  # source://graphql-batch//lib/graphql/batch/loader.rb#45
  def executor=(_arg0); end

  # source://graphql-batch//lib/graphql/batch/loader.rb#47
  def load(key); end

  # source://graphql-batch//lib/graphql/batch/loader.rb#54
  def load_many(keys); end

  # Returns the value of attribute loader_key.
  #
  # source://graphql-batch//lib/graphql/batch/loader.rb#45
  def loader_key; end

  # Sets the attribute loader_key
  #
  # @param value the value to set the attribute loader_key to.
  #
  # source://graphql-batch//lib/graphql/batch/loader.rb#45
  def loader_key=(_arg0); end

  # source://graphql-batch//lib/graphql/batch/loader.rb#58
  def resolve; end

  # @return [Boolean]
  #
  # source://graphql-batch//lib/graphql/batch/loader.rb#77
  def resolved?; end

  # For Promise#sync
  #
  # source://graphql-batch//lib/graphql/batch/loader.rb#69
  def wait; end

  protected

  # Override to use a different key for the cache than the load key
  #
  # source://graphql-batch//lib/graphql/batch/loader.rb#115
  def cache_key(load_key); end

  # Fulfill the key with provided value, for use in #perform
  #
  # source://graphql-batch//lib/graphql/batch/loader.rb#84
  def fulfill(key, value); end

  # Returns true when the key has already been fulfilled, otherwise returns false
  #
  # @return [Boolean]
  #
  # source://graphql-batch//lib/graphql/batch/loader.rb#97
  def fulfilled?(key); end

  # Must override to load the keys and call #fulfill for each key
  #
  # @raise [NotImplementedError]
  #
  # source://graphql-batch//lib/graphql/batch/loader.rb#110
  def perform(keys); end

  # source://graphql-batch//lib/graphql/batch/loader.rb#90
  def reject(key, reason); end

  private

  # source://graphql-batch//lib/graphql/batch/loader.rb#129
  def cache; end

  # source://graphql-batch//lib/graphql/batch/loader.rb#149
  def check_for_broken_promises(load_keys); end

  # source://graphql-batch//lib/graphql/batch/loader.rb#121
  def finish_resolve(key); end

  # source://graphql-batch//lib/graphql/batch/loader.rb#137
  def promise_for(load_key); end

  # source://graphql-batch//lib/graphql/batch/loader.rb#133
  def queue; end

  # source://graphql-batch//lib/graphql/batch/loader.rb#141
  def reject_pending_promises(load_keys, err); end

  class << self
    # source://graphql-batch//lib/graphql/batch/loader.rb#6
    def for(*_arg0, **_arg1, &_arg2); end

    # source://graphql-batch//lib/graphql/batch/loader.rb#20
    def load(key); end

    # source://graphql-batch//lib/graphql/batch/loader.rb#24
    def load_many(keys); end

    # source://graphql-batch//lib/graphql/batch/loader.rb#16
    def loader_key_for(*group_args, **group_kwargs); end

    private

    # source://graphql-batch//lib/graphql/batch/loader.rb#31
    def current_executor; end
  end
end

# source://graphql-batch//lib/graphql/batch.rb#7
class GraphQL::Batch::NoExecutorError < ::StandardError; end

# source://graphql-batch//lib/graphql/batch/setup_multiplex.rb#2
class GraphQL::Batch::SetupMultiplex
  # @return [SetupMultiplex] a new instance of SetupMultiplex
  #
  # source://graphql-batch//lib/graphql/batch/setup_multiplex.rb#3
  def initialize(schema, executor_class:); end

  # source://graphql-batch//lib/graphql/batch/setup_multiplex.rb#12
  def after_multiplex(multiplex); end

  # source://graphql-batch//lib/graphql/batch/setup_multiplex.rb#8
  def before_multiplex(multiplex); end
end

# source://graphql-batch//lib/graphql/batch/version.rb#3
GraphQL::Batch::VERSION = T.let(T.unsafe(nil), String)
