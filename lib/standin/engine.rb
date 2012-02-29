module Standin

  class Engine < Rails::Engine
    config.to_prepare do
      ActionController::Base.view_paths << ActionView::FileSystemResolver.new(Rails.root.join("app/#{Standin::content_path}"))
    end
  end

end