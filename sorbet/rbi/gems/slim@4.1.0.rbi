# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `slim` gem.
# Please instead update this file by running `bin/tapioca gem slim`.


# The Slim module contains all Slim related classes (e.g. Engine, Parser).
# Plugins might also reside within the Slim module (e.g. Include, Smart).
#
# @api public
#
# source://slim//lib/slim/parser.rb#1
module Slim; end

# @api private
#
# source://slim//lib/slim/code_attributes.rb#3
class Slim::CodeAttributes < ::Slim::Filter
  # Handle attribute expression `[:html, :attr, name, value]`
  #
  # @api private
  # @param name [String] Attribute name
  # @param value [Array] Value expression
  # @return [Array] Compiled temple expression
  #
  # source://slim//lib/slim/code_attributes.rb#19
  def on_html_attr(name, value); end

  # Handle attributes expression `[:html, :attrs, *attrs]`
  #
  # @api private
  # @param attrs [Array] Array of temple expressions
  # @return [Array] Compiled temple expression
  #
  # source://slim//lib/slim/code_attributes.rb#10
  def on_html_attrs(*attrs); end

  # Handle attribute expression `[:slim, :attrvalue, escape, code]`
  #
  # @api private
  # @param escape [Boolean] Escape html
  # @param code [String] Ruby code
  # @return [Array] Compiled temple expression
  #
  # source://slim//lib/slim/code_attributes.rb#49
  def on_slim_attrvalue(escape, code); end
end

# @api private
#
# source://slim//lib/slim/controls.rb#3
class Slim::Controls < ::Slim::Filter
  # Handle control expression `[:slim, :control, code, content]`
  #
  # @api private
  # @param code [String] Ruby code
  # @param content [Array] Temple expression
  # @return [Array] Compiled temple expression
  #
  # source://slim//lib/slim/controls.rb#13
  def on_slim_control(code, content); end

  # Handle output expression `[:slim, :output, escape, code, content]`
  #
  # @api private
  # @param escape [Boolean] Escape html
  # @param code [String] Ruby code
  # @param content [Array] Temple expression
  # @return [Array] Compiled temple expression
  #
  # source://slim//lib/slim/controls.rb#25
  def on_slim_output(escape, code, content); end

  # Handle text expression `[:slim, :text, type, content]`
  #
  # @api private
  # @param type [Symbol] Text type
  # @param content [Array] Temple expression
  # @return [Array] Compiled temple expression
  #
  # source://slim//lib/slim/controls.rb#56
  def on_slim_text(type, content); end
end

# @api private
#
# source://slim//lib/slim/controls.rb#6
Slim::Controls::IF_RE = T.let(T.unsafe(nil), Regexp)

# In Slim you don't need the do keyword sometimes. This
# filter adds the missing keyword.
#
#   - 10.times
#     | Hello
#
# @api private
#
# source://slim//lib/slim/do_inserter.rb#9
class Slim::DoInserter < ::Slim::Filter
  # Handle control expression `[:slim, :control, code, content]`
  #
  # @api private
  # @param code [String] Ruby code
  # @param content [Array] Temple expression
  # @return [Array] Compiled temple expression
  #
  # source://slim//lib/slim/do_inserter.rb#17
  def on_slim_control(code, content); end

  # Handle output expression `[:slim, :output, escape, code, content]`
  #
  # @api private
  # @param escape [Boolean] Escape html
  # @param code [String] Ruby code
  # @param content [Array] Temple expression
  # @return [Array] Compiled temple expression
  #
  # source://slim//lib/slim/do_inserter.rb#28
  def on_slim_output(escape, code, content); end
end

# @api private
#
# source://slim//lib/slim/do_inserter.rb#10
Slim::DoInserter::BLOCK_REGEX = T.let(T.unsafe(nil), Regexp)

# Temple filter which processes embedded engines
#
# @api private
#
# source://slim//lib/slim/embedded.rb#62
class Slim::Embedded < ::Slim::Filter
  # @api private
  # @return [Embedded] a new instance of Embedded
  #
  # source://slim//lib/slim/embedded.rb#92
  def initialize(opts = T.unsafe(nil)); end

  # @api private
  # @return [Boolean]
  #
  # source://slim//lib/slim/embedded.rb#106
  def enabled?(name); end

  # @api private
  # @raise [Temple::FilterError]
  #
  # source://slim//lib/slim/embedded.rb#99
  def on_slim_embedded(name, body, attrs); end

  protected

  # @api private
  # @raise [ArgumentError]
  #
  # source://slim//lib/slim/embedded.rb#113
  def normalize_engine_list(list); end

  class << self
    # @api private
    #
    # source://slim//lib/slim/embedded.rb#84
    def create(name, options); end

    # @api private
    #
    # source://slim//lib/slim/embedded.rb#66
    def engines; end

    # Register embedded engine
    #
    # @api private
    # @param name [String] Name of the engine
    # @param klass [Class] Engine class
    # @param option_filter List of options to pass to engine.
    #   Last argument can be default option hash.
    #
    # source://slim//lib/slim/embedded.rb#74
    def register(name, klass, *option_filter); end
  end
end

# @api private
#
# source://slim//lib/slim/embedded.rb#118
class Slim::Embedded::Engine < ::Slim::Filter
  protected

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#126
  def collect_newlines(body); end

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#121
  def collect_text(body); end
end

# Static template with interpolated ruby code
#
# @api private
#
# source://slim//lib/slim/embedded.rb#164
class Slim::Embedded::InterpolateTiltEngine < ::Slim::Embedded::TiltEngine
  # @api private
  #
  # source://slim//lib/slim/embedded.rb#165
  def collect_text(body); end

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#169
  def tilt_render(tilt_engine, tilt_options, text); end

  private

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#175
  def interpolation; end

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#179
  def output_protector; end
end

# Javascript wrapper engine.
# Like TagEngine, but can wrap content in html comment or cdata.
#
# @api private
#
# source://slim//lib/slim/embedded.rb#213
class Slim::Embedded::JavaScriptEngine < ::Slim::Embedded::TagEngine
  # @api private
  #
  # source://slim//lib/slim/embedded.rb#218
  def on_slim_embedded(engine, body, attrs); end
end

# Embeds ruby code
#
# @api private
#
# source://slim//lib/slim/embedded.rb#224
class Slim::Embedded::RubyEngine < ::Slim::Embedded::Engine
  # @api private
  #
  # source://slim//lib/slim/embedded.rb#225
  def on_slim_embedded(engine, body, attrs); end
end

# Sass engine which supports :pretty option
#
# @api private
#
# source://slim//lib/slim/embedded.rb#149
class Slim::Embedded::SassEngine < ::Slim::Embedded::TiltEngine
  protected

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#154
  def tilt_render(tilt_engine, tilt_options, text); end
end

# Tag wrapper engine
# Generates a html tag and wraps another engine (specified via :engine option)
#
# @api private
#
# source://slim//lib/slim/embedded.rb#186
class Slim::Embedded::TagEngine < ::Slim::Embedded::Engine
  # @api private
  #
  # source://slim//lib/slim/embedded.rb#189
  def on_slim_embedded(engine, body, attrs); end
end

# Basic tilt engine
#
# @api private
#
# source://slim//lib/slim/embedded.rb#133
class Slim::Embedded::TiltEngine < ::Slim::Embedded::Engine
  # @api private
  #
  # source://slim//lib/slim/embedded.rb#134
  def on_slim_embedded(engine, body, attrs); end

  protected

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#143
  def tilt_render(tilt_engine, tilt_options, text); end
end

# In Slim you don't need to close any blocks:
#
#   - if Slim.awesome?
#     | But of course it is!
#
# However, the parser is not smart enough (and that's a good thing) to
# automatically insert end's where they are needed. Luckily, this filter
# does *exactly* that (and it does it well!)
#
# @api private
#
# source://slim//lib/slim/end_inserter.rb#12
class Slim::EndInserter < ::Slim::Filter
  # Handle multi expression `[:multi, *exps]`
  #
  # @api private
  # @return [Array] Corrected Temple expression with ends inserted
  #
  # source://slim//lib/slim/end_inserter.rb#20
  def on_multi(*exps); end

  private

  # Appends an end
  #
  # @api private
  #
  # source://slim//lib/slim/end_inserter.rb#53
  def append_end(result); end

  # Checks if an expression is a Slim control code
  #
  # @api private
  # @return [Boolean]
  #
  # source://slim//lib/slim/end_inserter.rb#58
  def control?(exp); end
end

# @api private
#
# source://slim//lib/slim/end_inserter.rb#14
Slim::EndInserter::ELSE_RE = T.let(T.unsafe(nil), Regexp)

# @api private
#
# source://slim//lib/slim/end_inserter.rb#15
Slim::EndInserter::END_RE = T.let(T.unsafe(nil), Regexp)

# @api private
#
# source://slim//lib/slim/end_inserter.rb#13
Slim::EndInserter::IF_RE = T.let(T.unsafe(nil), Regexp)

# Slim engine which transforms slim code to executable ruby code
#
# @api public
#
# source://slim//lib/slim/engine.rb#10
class Slim::Engine < ::Temple::Engine; end

# Base class for Temple filters used in Slim
#
# This base filter passes everything through and allows
# to override only some methods without affecting the rest
# of the expression.
#
# @api private
#
# source://slim//lib/slim/filter.rb#10
class Slim::Filter < ::Temple::HTML::Filter
  # Pass-through handler
  #
  # @api private
  #
  # source://slim//lib/slim/filter.rb#21
  def on_slim_control(code, content); end

  # Pass-through handler
  #
  # @api private
  #
  # source://slim//lib/slim/filter.rb#16
  def on_slim_embedded(type, content, attrs); end

  # Pass-through handler
  #
  # @api private
  #
  # source://slim//lib/slim/filter.rb#26
  def on_slim_output(escape, code, content); end

  # Pass-through handler
  #
  # @api private
  #
  # source://slim//lib/slim/filter.rb#11
  def on_slim_text(type, content); end
end

# Perform interpolation of #{var_name} in the
# expressions `[:slim, :interpolate, string]`.
#
# @api private
#
# source://slim//lib/slim/interpolation.rb#10
class Slim::Interpolation < ::Slim::Filter
  # Handle interpolate expression `[:slim, :interpolate, string]`
  #
  # @api private
  # @param string [String] Static interpolate
  # @return [Array] Compiled temple expression
  #
  # source://slim//lib/slim/interpolation.rb#11
  def on_slim_interpolate(string); end
end

# @api public
#
# source://slim//lib/slim/splat/builder.rb#2
class Slim::InvalidAttributeNameError < ::StandardError; end

# @api private
#
# source://slim//lib/slim/embedded.rb#17
class Slim::NewlineCollector < ::Slim::Filter
  # @api private
  #
  # source://slim//lib/slim/embedded.rb#18
  def call(exp); end

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#24
  def on_newline; end
end

# @api private
#
# source://slim//lib/slim/embedded.rb#31
class Slim::OutputProtector < ::Slim::Filter
  # @api private
  #
  # source://slim//lib/slim/embedded.rb#32
  def call(exp); end

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#43
  def on_slim_output(escape, text, content); end

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#38
  def on_static(text); end

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#49
  def unprotect(text); end
end

# Parses Slim code and transforms it to a Temple expression
#
# @api private
#
# source://slim//lib/slim/parser.rb#4
class Slim::Parser < ::Temple::Parser
  # @api private
  # @return [Parser] a new instance of Parser
  #
  # source://slim//lib/slim/parser.rb#46
  def initialize(opts = T.unsafe(nil)); end

  # Compile string to Temple expression
  #
  # @api private
  # @param str [String] Slim code
  # @return [Array] Temple expression representing the code
  #
  # source://slim//lib/slim/parser.rb#95
  def call(str); end

  protected

  # @api private
  #
  # source://slim//lib/slim/parser.rb#533
  def deprecated_syntax(message); end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#543
  def expect_next_line; end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#144
  def get_indent(line); end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#134
  def next_line; end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#414
  def parse_attributes(attributes = T.unsafe(nil)); end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#318
  def parse_broken_line; end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#268
  def parse_comment_block; end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#150
  def parse_line; end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#199
  def parse_line_indicators; end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#501
  def parse_quoted_attribute(quote); end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#473
  def parse_ruby_code(outer_delimiter); end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#327
  def parse_tag(tag); end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#275
  def parse_text_block(first_line = T.unsafe(nil), text_indent = T.unsafe(nil)); end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#107
  def reset(lines = T.unsafe(nil), stacks = T.unsafe(nil)); end

  # Helper for raising exceptions
  #
  # @api private
  #
  # source://slim//lib/slim/parser.rb#523
  def syntax_error!(message); end

  # Unknown line indicator found. Overwrite this method if
  # you want to add line indicators to the Slim parser.
  # The default implementation throws a syntax error.
  #
  # @api private
  #
  # source://slim//lib/slim/parser.rb#264
  def unknown_line_indicator; end
end

# @api private
#
# source://slim//lib/slim/parser.rb#24
class Slim::Parser::SyntaxError < ::StandardError
  # @api private
  # @return [SyntaxError] a new instance of SyntaxError
  #
  # source://slim//lib/slim/parser.rb#27
  def initialize(error, file, line, lineno, column); end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#25
  def column; end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#25
  def error; end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#25
  def file; end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#25
  def line; end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#25
  def lineno; end

  # @api private
  #
  # source://slim//lib/slim/parser.rb#35
  def to_s; end
end

# Rails template implementation for Slim
#
# @api public
#
# source://slim//lib/slim/template.rb#0
class Slim::RailsTemplate < ::Temple::Templates::Rails; end

# @api public
#
# source://slim//lib/slim/splat/filter.rb#2
module Slim::Splat; end

# @api private
#
# source://slim//lib/slim/splat/builder.rb#5
class Slim::Splat::Builder
  # @api private
  # @return [Builder] a new instance of Builder
  #
  # source://slim//lib/slim/splat/builder.rb#8
  def initialize(options); end

  # @api private
  #
  # source://slim//lib/slim/splat/builder.rb#30
  def attr(name, value); end

  # @api private
  #
  # source://slim//lib/slim/splat/builder.rb#74
  def build_attrs; end

  # @api private
  #
  # source://slim//lib/slim/splat/builder.rb#45
  def build_tag(&block); end

  # @api private
  #
  # source://slim//lib/slim/splat/builder.rb#13
  def code_attr(name, escape, value); end

  # @api private
  #
  # source://slim//lib/slim/splat/builder.rb#24
  def splat_attrs(splat); end

  private

  # @api private
  #
  # source://slim//lib/slim/splat/builder.rb#101
  def escape_html(escape, value); end

  # @api private
  #
  # source://slim//lib/slim/splat/builder.rb#91
  def hyphen_attr(name, escape, value); end
end

# https://html.spec.whatwg.org/multipage/syntax.html#attributes-2
#
# @api private
#
# source://slim//lib/slim/splat/builder.rb#7
Slim::Splat::Builder::INVALID_ATTRIBUTE_NAME_REGEX = T.let(T.unsafe(nil), Regexp)

# @api private
#
# source://slim//lib/slim/splat/filter.rb#4
class Slim::Splat::Filter < ::Slim::Filter
  # @api private
  #
  # source://slim//lib/slim/splat/filter.rb#8
  def call(exp); end

  # Handle attributes expression `[:html, :attrs, *attrs]`
  #
  # @api private
  # @param attrs [Array] Array of temple expressions
  # @return [Array] Compiled temple expression
  #
  # source://slim//lib/slim/splat/filter.rb#45
  def on_html_attrs(*attrs); end

  # Handle tag expression `[:html, :tag, name, attrs, content]`
  #
  # @api private
  # @param name [String] Tag name
  # @param attrs [Array] Temple expression
  # @param content [Array] Temple expression
  # @return [Array] Compiled temple expression
  #
  # source://slim//lib/slim/splat/filter.rb#25
  def on_html_tag(name, attrs, content = T.unsafe(nil)); end

  protected

  # @api private
  #
  # source://slim//lib/slim/splat/filter.rb#66
  def make_builder(attrs); end

  # @api private
  # @return [Boolean]
  #
  # source://slim//lib/slim/splat/filter.rb#58
  def splat?(attr); end
end

# Tilt template implementation for Slim
#
# @api public
#
# source://slim//lib/slim/template.rb#0
class Slim::Template < ::Temple::Templates::Tilt; end

# @api private
#
# source://slim//lib/slim/embedded.rb#3
class Slim::TextCollector < ::Slim::Filter
  # @api private
  #
  # source://slim//lib/slim/embedded.rb#4
  def call(exp); end

  # @api private
  #
  # source://slim//lib/slim/embedded.rb#10
  def on_slim_interpolate(text); end
end

# Slim version string
#
# @api public
#
# source://slim//lib/slim/version.rb#4
Slim::VERSION = T.let(T.unsafe(nil), String)
