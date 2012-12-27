require_dependency "rails_pages/application_controller"

module RailsPages
  class PagesController < ApplicationController
    def show
      raise "No Rails.root set" if Rails.root.nil?
      file_base = File.join(Rails.root, 'app', 'pages', params[:id])

      data_types = {
        md: proc { |text| Redcarpet::Markdown.new(Redcarpet::Render::XHTML.new).render(text) },
        markdown: proc { |text| Redcarpet::Markdown.new(Redcarpet::Render::XHTML.new).render(text) }
      }

      files = []
      files += Dir.glob(file_base+'.'+I18n.locale.to_s+'.{'+data_types.keys.join(',')+'}')
      files += Dir.glob(file_base+'.{'+data_types.keys.join(',')+'}')
      file = files.first
      if file.nil?
        Rails.logger.error file+' not found'
        raise ActionController::RoutingError.new('Not Found')
      end
      type = File.extname(file)
      type = type[1..-1]

      @html = data_types[type.to_sym].call(File.read(file))
      render layout: 'application'
    end
  end
end
