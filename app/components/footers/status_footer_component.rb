# frozen_string_literal: true

module Footers
  class StatusFooterComponent < ApplicationComponent
    def initialize(view_context, status:, page_category: "")
      super view_context
      @status = status
      @page_category = page_category
    end

    def render
      build_html do |h|
        h.tag :div, class: "c-status-footer" do
          h.html Buttons::LikeButtonComponent.new(view_context,
            resource_name: "Status",
            resource_id: @status.id,
            likes_count: @status.likes_count,
            page_category: @page_category
          ).render
        end
      end
    end
  end
end
