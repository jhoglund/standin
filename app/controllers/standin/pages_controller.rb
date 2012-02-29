class Standin::PagesController < ApplicationController

  layout Standin::layout

  def show
    render :template => current_page, :layout => current_layout
  end

  protected

    def current_page
      page_path = params[:id] ? "/#{params[:id]}" : ""
      template_exists?(page_path) ? page_path : "#{page_path}/index"
    end
    
    def current_layout
      layout_root = "layouts"
      layout_path = File.join(layout_root, Standin::layout)
      template_exists?(layout_path) ? layout_path : File.join(layout_root, 'application')
    end

end
