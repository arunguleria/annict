# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `activerecord-session_store` gem.
# Please instead update this file by running `bin/tapioca gem activerecord-session_store`.


# source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#4
module ActionDispatch
  # source://actionpack/7.0.8.1/lib/action_dispatch.rb#99
  def test_app; end

  # source://actionpack/7.0.8.1/lib/action_dispatch.rb#99
  def test_app=(val); end

  class << self
    # source://actionpack/7.0.8.1/lib/action_dispatch.rb#99
    def test_app; end

    # source://actionpack/7.0.8.1/lib/action_dispatch.rb#99
    def test_app=(val); end
  end
end

# source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#5
module ActionDispatch::Session; end

# = Active Record Session Store
#
# A session store backed by an Active Record class. A default class is
# provided, but any object duck-typing to an Active Record Session class
# with text +session_id+ and +data+ attributes is sufficient.
#
# The default assumes a +sessions+ tables with columns:
#   +id+ (numeric primary key),
#   +session_id+ (string, usually varchar; maximum length is 255), and
#   +data+ (text or longtext; careful if your session data exceeds 65KB).
#
# The +session_id+ column should always be indexed for speedy lookups.
# Session data is marshaled to the +data+ column in Base64 format.
# If the data you write is larger than the column's size limit,
# ActionController::SessionOverflowError will be raised.
#
# You may configure the table name, primary key, and data column.
# For example, at the end of <tt>config/application.rb</tt>:
#
#   ActiveRecord::SessionStore::Session.table_name = 'legacy_session_table'
#   ActiveRecord::SessionStore::Session.primary_key = 'session_id'
#   ActiveRecord::SessionStore::Session.data_column_name = 'legacy_session_data'
#
# Note that setting the primary key to the +session_id+ frees you from
# having a separate +id+ column if you don't want it. However, you must
# set <tt>session.model.id = session.session_id</tt> by hand!  A before filter
# on ApplicationController is a good place.
#
# Since the default class is a simple Active Record, you get timestamps
# for free if you add +created_at+ and +updated_at+ datetime columns to
# the +sessions+ table, making periodic session expiration a snap.
#
# You may provide your own session class implementation, whether a
# feature-packed Active Record or a bare-metal high-performance SQL
# store, by setting
#
#   ActionDispatch::Session::ActiveRecordStore.session_class = MySessionClass
#
# You must implement these methods:
#
#   self.find_by_session_id(session_id)
#   initialize(hash_of_session_id_and_data, options_hash = {})
#   attr_reader :session_id
#   attr_accessor :data
#   save
#   destroy
#
# The example SqlBypass class is a generic SQL session store. You may
# use it as a basis for high-performance database-specific stores.
#
# source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#57
class ActionDispatch::Session::ActiveRecordStore < ::ActionDispatch::Session::AbstractSecureStore
  # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#58
  def session_class; end

  # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#58
  def session_class=(val); end

  private

  # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#94
  def delete_session(request, session_id, options); end

  # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#146
  def find_session(request, id); end

  # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#64
  def get_session(request, sid); end

  # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#118
  def get_session_model(request, id); end

  # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#135
  def get_session_with_fallback(sid); end

  # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#157
  def logger; end

  # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#77
  def write_session(request, sid, session_data, options); end

  class << self
    # @return [Boolean]
    #
    # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#161
    def private_session_id?(session_id); end

    # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#58
    def session_class; end

    # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#58
    def session_class=(val); end
  end
end

# source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#61
ActionDispatch::Session::ActiveRecordStore::ENV_SESSION_OPTIONS_KEY = T.let(T.unsafe(nil), String)

# source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#151
module ActionDispatch::Session::ActiveRecordStore::NilLogger
  class << self
    # source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#152
    def silence; end
  end
end

# source://activerecord-session_store//lib/action_dispatch/session/active_record_store.rb#60
ActionDispatch::Session::ActiveRecordStore::SESSION_RECORD_KEY = T.let(T.unsafe(nil), String)

# source://activerecord-session_store//lib/active_record/session_store/version.rb#1
module ActiveRecord
  class << self
    # source://activerecord/7.0.8.1/lib/active_record.rb#277
    def action_on_strict_loading_violation; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#277
    def action_on_strict_loading_violation=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#270
    def application_record_class; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#270
    def application_record_class=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#213
    def async_query_executor; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#213
    def async_query_executor=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#183
    def default_timezone; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#187
    def default_timezone=(default_timezone); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#311
    def dump_schema_after_migration; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#311
    def dump_schema_after_migration=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#321
    def dump_schemas; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#321
    def dump_schemas=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#365
    def eager_load!; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#296
    def error_on_ignored_order; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#296
    def error_on_ignored_order=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record/gem_version.rb#5
    def gem_version; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#236
    def global_executor_concurrency; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#228
    def global_executor_concurrency=(global_executor_concurrency); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#216
    def global_thread_pool_async_query_executor; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#240
    def index_nested_attribute_errors; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#240
    def index_nested_attribute_errors=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#171
    def lazily_load_schema_cache; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#171
    def lazily_load_schema_cache=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#180
    def legacy_connection_handling; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#180
    def legacy_connection_handling=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#258
    def maintain_test_schema; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#258
    def maintain_test_schema=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#340
    def query_transformers; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#340
    def query_transformers=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#255
    def queues; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#255
    def queues=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#355
    def raise_int_wider_than_64bit; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#355
    def raise_int_wider_than_64bit=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#200
    def reading_role; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#200
    def reading_role=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#177
    def schema_cache_ignored_tables; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#177
    def schema_cache_ignored_tables=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#288
    def schema_format; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#288
    def schema_format=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#328
    def suppress_multiple_database_warning; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#328
    def suppress_multiple_database_warning=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#302
    def timestamped_migrations; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#302
    def timestamped_migrations=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#347
    def use_yaml_unsafe_load; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#347
    def use_yaml_unsafe_load=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#248
    def verbose_query_logs; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#248
    def verbose_query_logs=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#337
    def verify_foreign_keys_for_fixtures; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#337
    def verify_foreign_keys_for_fixtures=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record/version.rb#7
    def version; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#267
    def warn_on_records_fetched_greater_than; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#267
    def warn_on_records_fetched_greater_than=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#197
    def writing_role; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#197
    def writing_role=(_arg0); end

    # source://activerecord/7.0.8.1/lib/active_record.rb#362
    def yaml_column_permitted_classes; end

    # source://activerecord/7.0.8.1/lib/active_record.rb#362
    def yaml_column_permitted_classes=(_arg0); end
  end
end

# source://activerecord-session_store//lib/active_record/session_store/version.rb#2
module ActiveRecord::SessionStore; end

# source://activerecord-session_store//lib/active_record/session_store.rb#11
module ActiveRecord::SessionStore::ClassMethods
  # source://activerecord-session_store//lib/active_record/session_store.rb#27
  def create_table!; end

  # source://activerecord-session_store//lib/active_record/session_store.rb#18
  def deserialize(data); end

  # source://activerecord-session_store//lib/active_record/session_store.rb#22
  def drop_table!; end

  # source://activerecord-session_store//lib/active_record/session_store.rb#14
  def serialize(data); end

  # source://activerecord-session_store//lib/active_record/session_store.rb#12
  def serializer; end

  # source://activerecord-session_store//lib/active_record/session_store.rb#12
  def serializer=(val); end

  # source://activerecord-session_store//lib/active_record/session_store.rb#36
  def serializer_class; end

  class << self
    # source://activerecord-session_store//lib/active_record/session_store.rb#12
    def serializer; end

    # source://activerecord-session_store//lib/active_record/session_store.rb#12
    def serializer=(val); end
  end
end

# Transparently migrates existing session values from Marshal to JSON
#
# source://activerecord-session_store//lib/active_record/session_store.rb#75
class ActiveRecord::SessionStore::ClassMethods::HybridSerializer < ::ActiveRecord::SessionStore::ClassMethods::JsonSerializer
  class << self
    # source://activerecord-session_store//lib/active_record/session_store.rb#78
    def load(value); end

    # @return [Boolean]
    #
    # source://activerecord-session_store//lib/active_record/session_store.rb#86
    def needs_migration?(value); end
  end
end

# source://activerecord-session_store//lib/active_record/session_store.rb#76
ActiveRecord::SessionStore::ClassMethods::HybridSerializer::MARSHAL_SIGNATURE = T.let(T.unsafe(nil), String)

# Uses built-in JSON library to encode/decode session
#
# source://activerecord-session_store//lib/active_record/session_store.rb#63
class ActiveRecord::SessionStore::ClassMethods::JsonSerializer
  class << self
    # source://activerecord-session_store//lib/active_record/session_store.rb#69
    def dump(value); end

    # source://activerecord-session_store//lib/active_record/session_store.rb#64
    def load(value); end
  end
end

# Use Marshal with Base64 encoding
#
# source://activerecord-session_store//lib/active_record/session_store.rb#52
class ActiveRecord::SessionStore::ClassMethods::MarshalSerializer
  class << self
    # source://activerecord-session_store//lib/active_record/session_store.rb#57
    def dump(value); end

    # source://activerecord-session_store//lib/active_record/session_store.rb#53
    def load(value); end
  end
end

# Defer serialization to the ActiveRecord database adapter
#
# source://activerecord-session_store//lib/active_record/session_store.rb#92
class ActiveRecord::SessionStore::ClassMethods::NullSerializer
  class << self
    # source://activerecord-session_store//lib/active_record/session_store.rb#97
    def dump(value); end

    # source://activerecord-session_store//lib/active_record/session_store.rb#93
    def load(value); end
  end
end

# source://activerecord-session_store//lib/active_record/session_store/railtie.rb#5
class ActiveRecord::SessionStore::Railtie < ::Rails::Railtie; end

# The default Active Record class.
#
# source://activerecord-session_store//lib/active_record/session_store/session.rb#7
class ActiveRecord::SessionStore::Session < ::ActiveRecord::Base
  include ::ActiveRecord::SessionStore::Session::GeneratedAttributeMethods
  include ::ActiveRecord::SessionStore::Session::GeneratedAssociationMethods
  extend ::ActiveRecord::SessionStore::ClassMethods

  # @return [Session] a new instance of Session
  #
  # source://activerecord-session_store//lib/active_record/session_store/session.rb#57
  def initialize(*_arg0); end

  # Lazy-deserialize session state.
  #
  # source://activerecord-session_store//lib/active_record/session_store/session.rb#63
  def data; end

  # Sets the attribute data
  #
  # @param value the value to set the attribute data to.
  #
  # source://activerecord-session_store//lib/active_record/session_store/session.rb#67
  def data=(_arg0); end

  # :singleton-method:
  # Customizable data column name. Defaults to 'data'.
  #
  # source://activerecord-session_store//lib/active_record/session_store/session.rb#14
  def data_column_name; end

  # source://activerecord-session_store//lib/active_record/session_store/session.rb#14
  def data_column_name=(val); end

  # Has the session been loaded yet?
  #
  # @return [Boolean]
  #
  # source://activerecord-session_store//lib/active_record/session_store/session.rb#70
  def loaded?; end

  # This method was introduced when addressing CVE-2019-16782
  # (see https://github.com/rack/rack/security/advisories/GHSA-hrqr-hxpp-chr3).
  # Sessions created on version <= 1.1.3 were guessable via a timing attack.
  # To secure sessions created on those old versions, this method can be called
  # on all existing sessions in the database. Users will not lose their session
  # when this is done.
  #
  # source://activerecord-session_store//lib/active_record/session_store/session.rb#80
  def secure!; end

  private

  # Ensures that the data about to be stored in the database is not
  # larger than the data storage column. Raises
  # ActionController::SessionOverflowError.
  #
  # source://activerecord-session_store//lib/active_record/session_store/session.rb#106
  def raise_on_session_data_overflow!; end

  # source://activerecord-session_store//lib/active_record/session_store/session.rb#96
  def serialize_data!; end

  class << self
    # source://activesupport/7.0.8.1/lib/active_support/callbacks.rb#68
    def __callbacks; end

    # source://activemodel/7.0.8.1/lib/active_model/validations.rb#52
    def _validators; end

    # source://activerecord-session_store//lib/active_record/session_store/session.rb#14
    def data_column_name; end

    # source://activerecord-session_store//lib/active_record/session_store/session.rb#14
    def data_column_name=(val); end

    # source://activerecord-session_store//lib/active_record/session_store/session.rb#21
    def data_column_size_limit; end

    # source://activerecord/7.0.8.1/lib/active_record/enum.rb#116
    def defined_enums; end

    # Hook to set up sessid compatibility.
    #
    # source://activerecord-session_store//lib/active_record/session_store/session.rb#26
    def find_by_session_id(session_id); end

    # source://kaminari-activerecord/1.2.2/lib/kaminari/activerecord/active_record_model_extension.rb#15
    def page(num = T.unsafe(nil)); end

    private

    # source://activerecord-session_store//lib/active_record/session_store/session.rb#32
    def session_id_column; end

    # Compatibility with tables using sessid instead of session_id.
    #
    # source://activerecord-session_store//lib/active_record/session_store/session.rb#37
    def setup_sessid_compatibility!; end
  end
end

# source://activerecord-session_store//lib/active_record/session_store/session.rb#0
module ActiveRecord::SessionStore::Session::GeneratedAssociationMethods; end

# source://activerecord-session_store//lib/active_record/session_store/session.rb#0
module ActiveRecord::SessionStore::Session::GeneratedAttributeMethods; end

# source://activerecord-session_store//lib/active_record/session_store/session.rb#9
ActiveRecord::SessionStore::Session::SEMAPHORE = T.let(T.unsafe(nil), Thread::Mutex)

# A barebones session store which duck-types with the default session
# store but bypasses Active Record and issues SQL directly. This is
# an example session model class meant as a basis for your own classes.
#
# The database connection, table name, and session id and data columns
# are configurable class attributes. Serializing and deserializeing
# are implemented as class methods that you may override. By default,
# serializing data is
#
#   ::Base64.encode64(Marshal.dump(data))
#
# and deserializing data is
#
#   Marshal.load(::Base64.decode64(data))
#
# This serializing behavior is intended to store the widest range of
# binary session data in a +text+ column. For higher performance,
# store in a +blob+ column instead and forgo the Base64 encoding.
#
# source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#23
class ActiveRecord::SessionStore::SqlBypass
  extend ::ActiveRecord::SessionStore::ClassMethods

  # Look for normal and serialized data, self.find_by_session_id's way of
  # telling us to postpone deserializing until the data is requested.
  # We need to handle a normal data attribute in case of a new record.
  #
  # @return [SqlBypass] a new instance of SqlBypass
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#80
  def initialize(attributes); end

  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#69
  def connection(*_arg0, **_arg1, &_arg2); end

  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#69
  def connection=(arg); end

  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#69
  def connection_pool(*_arg0, **_arg1, &_arg2); end

  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#69
  def connection_pool=(arg); end

  # Lazy-deserialize session state.
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#94
  def data; end

  # Sets the attribute data
  #
  # @param value the value to set the attribute data to.
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#75
  def data=(_arg0); end

  # :singleton-method:
  # The data field defaults to 'data'.
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#41
  def data_column; end

  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#41
  def data_column=(val); end

  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#135
  def destroy; end

  # @return [Boolean]
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#105
  def loaded?; end

  # Returns the value of attribute new_record.
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#71
  def new_record; end

  # Returns the value of attribute new_record.
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#71
  def new_record?; end

  # Returns true if the record is persisted, i.e. it's not a new record
  #
  # @return [Boolean]
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#89
  def persisted?; end

  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#109
  def save; end

  # Returns the value of attribute session_id.
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#72
  def session_id; end

  # Sets the attribute session_id
  #
  # @param value the value to set the attribute session_id to.
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#72
  def session_id=(_arg0); end

  # :singleton-method:
  # The session id field defaults to 'session_id'.
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#35
  def session_id_column; end

  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#35
  def session_id_column=(val); end

  # :singleton-method:
  # The table name defaults to 'sessions'.
  #
  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#29
  def table_name; end

  # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#29
  def table_name=(val); end

  class << self
    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#53
    def connection; end

    # Use the ActiveRecord::Base.connection by default.
    #
    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#48
    def connection=(_arg0); end

    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#57
    def connection_pool; end

    # Use the ActiveRecord::Base.connection_pool by default.
    #
    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#51
    def connection_pool=(_arg0); end

    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#41
    def data_column; end

    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#41
    def data_column=(val); end

    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#41
    def data_column_name; end

    # Look up a session by id and deserialize its data if found.
    #
    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#62
    def find_by_session_id(session_id); end

    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#35
    def session_id_column; end

    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#35
    def session_id_column=(val); end

    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#29
    def table_name; end

    # source://activerecord-session_store//lib/active_record/session_store/sql_bypass.rb#29
    def table_name=(val); end
  end
end

# source://activerecord-session_store//lib/active_record/session_store/version.rb#3
ActiveRecord::SessionStore::VERSION = T.let(T.unsafe(nil), String)
