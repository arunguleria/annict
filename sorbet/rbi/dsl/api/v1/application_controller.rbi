# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Api::V1::ApplicationController`.
# Please instead update this file by running `bin/tapioca dsl Api::V1::ApplicationController`.


class Api::V1::ApplicationController
  include GeneratedUrlHelpersModule
  include GeneratedPathHelpersModule

  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::Ransack::Helpers::FormHelper
    include ::ActionController::Base::HelperMethods
    include ::ApplicationHelper
    include ::ComponentValueFetcherHelper
    include ::Db::ApplicationHelper
    include ::EpisodesHelper
    include ::GaHelper
    include ::HeadHelper
    include ::IconHelper
    include ::ImageHelper
    include ::LocalHelper
    include ::MarkdownHelper
    include ::RecordsHelper
    include ::StaffsHelper
    include ::TimeZoneHelper
    include ::UrlHelper
    include ::VodHelper
    include ::WorksHelper
    include ::PreviewHelper
    include ::Doorkeeper::DashboardHelper
    include ::DeviseHelper

    sig { returns(T.untyped) }
    def client_uuid; end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
