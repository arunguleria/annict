# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `meta-tags` gem.
# Please instead update this file by running `bin/tapioca gem meta-tags`.


# MetaTags gem namespace.
#
# source://meta-tags//lib/meta_tags.rb#7
module MetaTags
  class << self
    # Returns MetaTags gem configuration.
    #
    # source://meta-tags//lib/meta_tags.rb#10
    def config; end

    # Configures MetaTags gem.
    #
    # @example
    #
    #   MetaTags.configure do |config|
    #   # config.title_limit = 100
    #   end
    # @yield [Configuration] configuration object.
    #
    # source://meta-tags//lib/meta_tags.rb#22
    def configure; end
  end
end

# MetaTags configuration.
#
# source://meta-tags//lib/meta_tags/configuration.rb#5
class MetaTags::Configuration
  # Initializes a new instance of Configuration class.
  #
  # @return [Configuration] a new instance of Configuration
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#43
  def initialize; end

  # source://meta-tags//lib/meta_tags/configuration.rb#47
  def default_property_tags; end

  # How many characters to truncate description to.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#13
  def description_limit; end

  # How many characters to truncate description to.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#13
  def description_limit=(_arg0); end

  # How many characters to truncate keywords to.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#16
  def keywords_limit; end

  # How many characters to truncate keywords to.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#16
  def keywords_limit=(_arg0); end

  # Should keywords forced into lowercase?
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#22
  def keywords_lowercase; end

  # Should keywords forced into lowercase?
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#22
  def keywords_lowercase=(_arg0); end

  # Keywords separator - a string to join keywords with.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#19
  def keywords_separator; end

  # Keywords separator - a string to join keywords with.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#19
  def keywords_separator=(_arg0); end

  # When true, the output will not include new line characters between meta tags.
  # Default is false.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#30
  def minify_output; end

  # When true, the output will not include new line characters between meta tags.
  # Default is false.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#30
  def minify_output=(_arg0); end

  # Switches between open (<meta ... >) and closed (<meta ... />) meta tags.
  # Default is true, which means "open".
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#26
  def open_meta_tags; end

  # Switches between open (<meta ... >) and closed (<meta ... />) meta tags.
  # Default is true, which means "open".
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#26
  def open_meta_tags=(_arg0); end

  # @return [Boolean]
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#72
  def open_meta_tags?; end

  # Custom meta tags that should use `property` attribute instead of `name`
  # - an array of strings or symbols representing their names or name-prefixes.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#34
  def property_tags; end

  # source://meta-tags//lib/meta_tags/configuration.rb#76
  def reset_defaults!; end

  # Configure whenever Meta-Tags should skip canonicals on pages with noindex: true
  # "shouldn't mix noindex & rel=canonical comes from: they're very contradictory pieces of information for us."
  # - John Mueller (Webmaster Trends Analyst at Google)
  # https://www.reddit.com/r/TechSEO/comments/8yahdr/2_questions_about_the_canonical_tag/e2dey9i/
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#40
  def skip_canonical_links_on_noindex; end

  # Configure whenever Meta-Tags should skip canonicals on pages with noindex: true
  # "shouldn't mix noindex & rel=canonical comes from: they're very contradictory pieces of information for us."
  # - John Mueller (Webmaster Trends Analyst at Google)
  # https://www.reddit.com/r/TechSEO/comments/8yahdr/2_questions_about_the_canonical_tag/e2dey9i/
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#40
  def skip_canonical_links_on_noindex=(_arg0); end

  # How many characters to truncate title to.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#7
  def title_limit; end

  # How many characters to truncate title to.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#7
  def title_limit=(_arg0); end

  # Truncate site_title instead of title.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#10
  def truncate_site_title_first; end

  # Truncate site_title instead of title.
  #
  # source://meta-tags//lib/meta_tags/configuration.rb#10
  def truncate_site_title_first=(_arg0); end
end

# Represents an HTML meta tag with content (<tag></tag>).
# Content should be passed as a `:content` attribute.
#
# source://meta-tags//lib/meta_tags/content_tag.rb#11
class MetaTags::ContentTag < ::MetaTags::Tag
  # Render tag into a Rails view.
  #
  # @param view [ActionView::Base] instance of a Rails view.
  # @return [String] HTML string for the tag.
  #
  # source://meta-tags//lib/meta_tags/content_tag.rb#12
  def render(view); end
end

# Contains methods to use in controllers.
#
# You can define several instance variables to set meta tags:
#   @page_title = 'Member Login'
#   @page_description = 'Member login page.'
#   @page_keywords = 'Site, Login, Members'
#
# Also you can use {#set_meta_tags} method, that have the same parameters
# as {ViewHelper#set_meta_tags}.
#
# source://meta-tags//lib/meta_tags/controller_helper.rb#14
module MetaTags::ControllerHelper
  # Processes the <tt>@page_title</tt>, <tt>@page_keywords</tt>, and
  # <tt>@page_description</tt> instance variables and calls +render+.
  #
  # source://meta-tags//lib/meta_tags/controller_helper.rb#17
  def render(*args, &block); end

  protected

  # Get meta tags for the page.
  #
  # source://meta-tags//lib/meta_tags/controller_helper.rb#34
  def meta_tags; end

  # Set meta tags for the page.
  #
  # See <tt>MetaTags::ViewHelper#set_meta_tags</tt> for details.
  #
  # source://meta-tags//lib/meta_tags/controller_helper.rb#28
  def set_meta_tags(meta_tags); end
end

# Class represents a collection of meta tags. Basically a wrapper around
# HashWithIndifferentAccess, with some additional helper methods.
#
# source://meta-tags//lib/meta_tags/meta_tags_collection.rb#6
class MetaTags::MetaTagsCollection
  # Initializes a new instance of MetaTagsCollection.
  #
  # @return [MetaTagsCollection] a new instance of MetaTagsCollection
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#11
  def initialize; end

  # Returns meta tag value by name.
  #
  # @param name [String, Symbol] meta tag name.
  # @return meta tag value.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#20
  def [](name); end

  # Sets meta tag value by name.
  #
  # @param name [String, Symbol] meta tag name.
  # @param value meta tag value.
  # @return meta tag value.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#30
  def []=(name, value); end

  # Deletes specified meta tags.
  #
  # @param names [Array<String, Symbol>] a list of meta tags to delete.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#100
  def delete(*names); end

  # Deletes and returns a meta tag value by name.
  #
  # @param name [String, Symbol] meta tag name.
  # @return [Object] meta tag value.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#92
  def extract(name); end

  # Extracts full page title and deletes all related meta tags.
  #
  # @return [String] page title.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#108
  def extract_full_title; end

  # Extracts noindex settings as a Hash mapping noindex tag name to value.
  #
  # @return [Hash<String,String>] noindex attributes.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#154
  def extract_robots; end

  # Extracts title separator as a string.
  #
  # @return [String] page title separator.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#136
  def extract_separator; end

  # Extracts page title as an array of segments without site title and separators.
  #
  # @return [Array<String>] segments of page title.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#121
  def extract_title; end

  # Constructs the full title as if it would be rendered in title meta tag.
  #
  # @param defaults [Hash] list of default meta tag attributes.
  # @return [String] page title.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#69
  def full_title(defaults = T.unsafe(nil)); end

  # Returns the value of attribute meta_tags.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#7
  def meta_tags; end

  # Constructs the title without site title (for normalized parameters). When title is empty,
  # use the site title instead.
  #
  # @return [String] page title.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#78
  def page_title(defaults = T.unsafe(nil)); end

  # Recursively merges a Hash of meta tag attributes into current list.
  #
  # @param object [Hash, #to_meta_tags] Hash of meta tags (or object responding
  #   to #to_meta_tags and returning a hash) to merge into the current list.
  # @return [Hash] result of the merge.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#40
  def update(object = T.unsafe(nil)); end

  # Temporary merges defaults with current meta tags list and yields the block.
  #
  # @param defaults [Hash] list of default meta tag attributes.
  # @return result of the block call.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#56
  def with_defaults(defaults = T.unsafe(nil)); end

  protected

  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#219
  def apply_robots_value(result, name, value, processed); end

  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#207
  def calculate_robots_attributes(result, attributes); end

  # Extracts robots attribute (noindex, nofollow, etc) name and value.
  #
  # @param name [String, Symbol] noindex attribute name.
  # @return [Array<String>] pair of noindex attribute name and value.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#199
  def extract_robots_attribute(name); end

  # Extracts separator segment without deleting it from meta tags list.
  # If the value is false, empty string will be returned.
  #
  # @param name [Symbol, String] separator segment name.
  # @param default [String] default value.
  # @return [String] separator segment value.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#190
  def extract_separator_section(name, default); end

  # Converts input hash to HashWithIndifferentAccess and renames :open_graph to :og.
  #
  # @param meta_tags [Hash] list of meta tags.
  # @return [ActiveSupport::HashWithIndifferentAccess] normalized meta tags list.
  #
  # source://meta-tags//lib/meta_tags/meta_tags_collection.rb#177
  def normalize_open_graph(meta_tags); end
end

# source://meta-tags//lib/meta_tags/railtie.rb#4
class MetaTags::Railtie < ::Rails::Railtie; end

# This class is used by MetaTags gems to render HTML meta tags into page.
#
# source://meta-tags//lib/meta_tags/renderer.rb#5
class MetaTags::Renderer
  # Initialized a new instance of Renderer.
  #
  # @param meta_tags [MetaTagsCollection] meta tags object to render.
  # @return [Renderer] a new instance of Renderer
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#12
  def initialize(meta_tags); end

  # Returns the value of attribute meta_tags.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#6
  def meta_tags; end

  # Returns the value of attribute normalized_meta_tags.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#6
  def normalized_meta_tags; end

  # Renders meta tags on the page.
  #
  # @param view [ActionView::Base] Rails view object.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#20
  def render(view); end

  protected

  # Returns meta tag property name for a give meta tag based on the
  # configured list of property tags in MetaTags::Configuration#property_tags.
  #
  # @param name [String, Symbol] tag key.
  # @return [Symbol] meta tag attribute name (:property or :name).
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#285
  def configured_name_key(name); end

  # Recursive method to process a hash with meta tags
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  # @param property [String, Symbol] a Hash or a String to render as meta tag.
  # @param content [Array] array of nested meta tag attributes or values.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#262
  def process_array(tags, property, content, **opts); end

  # Recursive method to process a hash with meta tags
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  # @param property [String, Symbol] a Hash or a String to render as meta tag.
  # @param content [Hash] nested meta tag attributes.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#237
  def process_hash(tags, property, content, **opts); end

  # Recursive method to process all the hashes and arrays on meta tags
  #
  # top-level meta tag.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  # @param property [String, Symbol] a Hash or a String to render as meta tag.
  # @param content [Hash, Array, String, Symbol] text content or a symbol reference to
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#218
  def process_tree(tags, property, content, itemprop: T.unsafe(nil), **opts); end

  # Renders alternate link tags.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#119
  def render_alternate(tags); end

  # Renders canonical link
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#167
  def render_canonical_link(tags); end

  # Renders charset tag.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#48
  def render_charset(tags); end

  # Renders custom meta tags.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#202
  def render_custom(tags); end

  # Renders a complex hash object by key.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#190
  def render_hash(tags, key, **opts); end

  # Renders complex hash objects.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#180
  def render_hashes(tags, **opts); end

  # Renders icon(s) tag.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#69
  def render_icon(tags); end

  # Renders links.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#153
  def render_links(tags); end

  # Renders noindex and nofollow meta tags.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#100
  def render_noindex(tags); end

  # Renders open_search link tag.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#138
  def render_open_search(tags); end

  # Renders refresh meta tag.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#110
  def render_refresh(tags); end

  # Recursive method to process a hash with meta tags
  #
  # top-level meta tag.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  # @param name [String, Symbol] a Hash or a String to render as meta tag.
  # @param value [String, Symbol] text content or a symbol reference to
  # @param itemprop [String, Symbol] value of the itemprop attribute.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#274
  def render_tag(tags, name, value, itemprop: T.unsafe(nil)); end

  # Renders title tag.
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#57
  def render_title(tags); end

  # Renders meta tag with normalization (should have a corresponding normalize_
  # method in TextNormalizer).
  #
  # @param tags [Array<Tag>] a buffer object to store tag in.
  # @see TextNormalizer
  #
  # source://meta-tags//lib/meta_tags/renderer.rb#90
  def render_with_normalization(tags, name); end
end

# Represents an HTML meta tag with no content (<tag />).
#
# source://meta-tags//lib/meta_tags/tag.rb#5
class MetaTags::Tag
  # Initializes a new instance of Tag class.
  #
  # @param name [String, Symbol] HTML tag name
  # @param attributes [Hash] list of HTML tag attributes
  # @return [Tag] a new instance of Tag
  #
  # source://meta-tags//lib/meta_tags/tag.rb#13
  def initialize(name, attributes = T.unsafe(nil)); end

  # Returns the value of attribute attributes.
  #
  # source://meta-tags//lib/meta_tags/tag.rb#6
  def attributes; end

  # Returns the value of attribute name.
  #
  # source://meta-tags//lib/meta_tags/tag.rb#6
  def name; end

  # Render tag into a Rails view.
  #
  # @param view [ActionView::Base] instance of a Rails view.
  # @return [String] HTML string for the tag.
  #
  # source://meta-tags//lib/meta_tags/tag.rb#23
  def render(view); end

  protected

  # source://meta-tags//lib/meta_tags/tag.rb#29
  def prepare_attributes(attributes); end
end

# Module contains helpers that normalize text meta tag values.
#
# source://meta-tags//lib/meta_tags/text_normalizer.rb#5
module MetaTags::TextNormalizer
  extend ::MetaTags::TextNormalizer

  # Removes HTML tags and squashes down all the spaces.
  #
  # space characters squashed into a single space.
  #
  # @param string [String, nil] input string.
  # @raise [ArgumentError]
  # @return [String] input string with no HTML tags and consequent white
  #
  # source://meta-tags//lib/meta_tags/text_normalizer.rb#109
  def cleanup_string(string, strip: T.unsafe(nil)); end

  # Cleans multiple strings up.
  #
  # @param strings [String, Array<String>] input string(s).
  # @return [Array<String>] clean strings.
  # @see cleanup_string
  #
  # source://meta-tags//lib/meta_tags/text_normalizer.rb#127
  def cleanup_strings(strings, strip: T.unsafe(nil)); end

  # Easy way to get access to Rails helpers.
  #
  # @return [ActionView::Base] proxy object to access Rails helpers.
  #
  # source://meta-tags//lib/meta_tags/text_normalizer.rb#72
  def helpers; end

  # Normalize description value.
  #
  # to 200 characters.
  #
  # @param description [String] description string.
  # @return [String] text with tags removed, squashed spaces, truncated
  #
  # source://meta-tags//lib/meta_tags/text_normalizer.rb#42
  def normalize_description(description); end

  # Normalize keywords value.
  #
  # @param keywords [String, Array<String>] list of keywords as a string or Array.
  # @return [String] list of keywords joined with comma, with tags removed.
  #
  # source://meta-tags//lib/meta_tags/text_normalizer.rb#57
  def normalize_keywords(keywords); end

  # Normalize title value.
  #
  # @param site_title [String] site title.
  # @param title [Array<String>] title string.
  # @param separator [String] a string to join title parts with.
  # @param reverse [true, false] whether title should be reversed.
  # @return [String] title with HTML tags removed.
  #
  # source://meta-tags//lib/meta_tags/text_normalizer.rb#16
  def normalize_title(site_title, title, separator, reverse = T.unsafe(nil)); end

  # This method returns a html safe string similar to what <tt>Array#join</tt>
  # would return. All items in the array, including the supplied separator, are
  # html escaped unless they are html safe, and the returned string is marked
  # as html safe.
  #
  # @param array [Array<String>] list of strings to join.
  # @param sep [String] separator to join strings with.
  # @return [String] input strings joined together using a given separator.
  #
  # source://meta-tags//lib/meta_tags/text_normalizer.rb#99
  def safe_join(array, sep = T.unsafe(nil)); end

  # Strips all HTML tags from the +html+, including comments.
  #
  # @param string [String] HTML string.
  # @return [String] html_safe string with no HTML tags.
  #
  # source://meta-tags//lib/meta_tags/text_normalizer.rb#81
  def strip_tags(string); end

  # Truncates a string to a specific limit. Return string without truncation when limit 0 or nil
  #
  # @param string [String] input strings.
  # @param limit [Integer, nil] characters number to truncate to.
  # @param natural_separator [String] natural separator to truncate at.
  # @return [String] truncated string.
  #
  # source://meta-tags//lib/meta_tags/text_normalizer.rb#140
  def truncate(string, limit = T.unsafe(nil), natural_separator = T.unsafe(nil)); end

  # Truncates an array of strings to a specific limit.
  #
  # @param string_array [Array<String>] input strings.
  # @param limit [Integer, nil] characters number to truncate to.
  # @param separator [String] separator that will be used to join array later.
  # @param natural_separator [String] natural separator to truncate at.
  # @return [Array<String>] truncated array of strings.
  #
  # source://meta-tags//lib/meta_tags/text_normalizer.rb#160
  def truncate_array(string_array, limit = T.unsafe(nil), separator = T.unsafe(nil), natural_separator = T.unsafe(nil)); end

  private

  # source://meta-tags//lib/meta_tags/text_normalizer.rb#186
  def calculate_limit_left(limit, length, result, separator); end

  # source://meta-tags//lib/meta_tags/text_normalizer.rb#204
  def calculate_title_limits(site_title, title, separator, global_limit); end

  # source://meta-tags//lib/meta_tags/text_normalizer.rb#190
  def truncate_title(site_title, title, separator); end
end

# Gem version.
#
# source://meta-tags//lib/meta_tags/version.rb#5
MetaTags::VERSION = T.let(T.unsafe(nil), String)

# Contains methods to use in views and helpers.
#
# source://meta-tags//lib/meta_tags/view_helper.rb#6
module MetaTags::ViewHelper
  # Set the page description.
  #
  # @example
  #   description 'This is login page'
  # @param description [String] page description to be set in HEAD section of
  #   the HTML document. Please note, any HTML tags will be stripped
  #   from output string, and string will be truncated to 200
  #   characters.
  # @return [String] passed value.
  # @see #display_meta_tags
  #
  # source://meta-tags//lib/meta_tags/view_helper.rb#93
  def description(description); end

  # Set default meta tag values and display meta tags. This method
  # should be used in layout file.
  #
  # @example
  #   <head>
  #   <%= display_meta_tags site: 'My website' %>
  #   </head>
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @param defaults [Hash] default meta tag values.
  # @param default [Hash] a customizable set of options
  # @return [String] HTML meta tags to render in HEAD section of the
  #   HTML document.
  #
  # source://meta-tags//lib/meta_tags/view_helper.rb#180
  def display_meta_tags(defaults = T.unsafe(nil)); end

  # Returns full page title as a string without surrounding <title> tag.
  #
  # The only case when you may need this helper is when you use pjax. This means
  # that your layout file (with display_meta_tags helper) will not be rendered,
  # so you have to pass default arguments like site title in here. You probably
  # want to define helper with default options to minimize code duplication.
  #
  # @example
  #   <div data-page-container="true" title="<%= display_title title: 'My Page', site: 'PJAX Site' %>">
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @option default
  # @param defaults [Hash] list of meta tags.
  # @param default [Hash] a customizable set of options
  #
  # source://meta-tags//lib/meta_tags/view_helper.rb#205
  def display_title(defaults = T.unsafe(nil)); end

  # Set the page keywords.
  #
  # @example
  #   keywords 'keyword1, keyword2'
  #   keywords %w(keyword1 keyword2)
  # @param keywords [String, Array] meta keywords to render in HEAD
  #   section of the HTML document.
  # @return [String, Array] passed value.
  # @see #display_meta_tags
  #
  # source://meta-tags//lib/meta_tags/view_helper.rb#75
  def keywords(keywords); end

  # Get meta tags for the page.
  #
  # source://meta-tags//lib/meta_tags/view_helper.rb#8
  def meta_tags; end

  # Set the nofollow meta tag
  #
  # @example
  #   nofollow true
  #   nofollow 'googlebot'
  # @param nofollow [Boolean, String, Array<String>] a nofollow value.
  # @return [Boolean, String, Array<String>] passed value.
  # @see #display_meta_tags
  #
  # source://meta-tags//lib/meta_tags/view_helper.rb#125
  def nofollow(nofollow = T.unsafe(nil)); end

  # Set the noindex meta tag
  #
  # @example
  #   noindex true
  #   noindex 'googlebot'
  # @param noindex [Boolean, String, Array<String>] a noindex value.
  # @return [Boolean, String, Array<String>] passed value.
  # @see #display_meta_tags
  #
  # source://meta-tags//lib/meta_tags/view_helper.rb#109
  def noindex(noindex = T.unsafe(nil)); end

  # Set the refresh meta tag
  #
  # @example
  #   refresh 5
  #   refresh "5;url=http://www.example.com/"
  # @param refresh [Integer, String] a refresh value.
  # @return [Integer, String] passed value.
  # @see #display_meta_tags
  #
  # source://meta-tags//lib/meta_tags/view_helper.rb#141
  def refresh(refresh); end

  # Set meta tags for the page.
  #
  # Method could be used several times, and all options passed will
  # be merged. If you will set the same property several times, last one
  # will take precedence.
  #
  # Usually you will not call this method directly. Use {#title}, {#keywords},
  # {#description} for your daily tasks.
  #
  # @example
  #   set_meta_tags title: 'Login Page', description: 'Here you can login'
  #   set_meta_tags keywords: 'authorization, login'
  # @param meta_tags [Hash] list of meta tags. See {#display_meta_tags}
  #   for allowed options.
  # @see #display_meta_tags
  #
  # source://meta-tags//lib/meta_tags/view_helper.rb#30
  def set_meta_tags(meta_tags = T.unsafe(nil)); end

  # Set the page title and return it back.
  #
  # This method is best suited for use in helpers. It sets the page title
  # and returns it (or +headline+ if specified).
  #
  # @example Set HTML title to "Please login", return "Please login"
  #   title 'Login Page'
  # @example Set HTML title to "Login Page", return "Please login"
  #   title 'Login Page', 'Please login'
  # @example Set title as array of strings
  #   title title: ['part1', 'part2'] # => "part1 | part2"
  # @example Get current title
  #   title
  # @param title [nil, String, Array] page title. When passed as an
  #   +Array+, parts will be joined using configured separator value
  #   (see {#display_meta_tags}). When nil, current title will be returned.
  # @param headline [String] the value to return from method. Useful
  #   for using this method in views to set both page title
  #   and the content of heading tag.
  # @return [String] returns +title+ value or +headline+ if passed.
  # @see #display_meta_tags
  #
  # source://meta-tags//lib/meta_tags/view_helper.rb#58
  def title(title = T.unsafe(nil), headline = T.unsafe(nil)); end
end
