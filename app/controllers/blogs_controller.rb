require 'contentful'



class BlogsController < ApplicationController
  include ApplicationHelper

  def index
    @blogs = contentful.entries(content_type: 'b', include: 2)
    @renderer = RichTextRenderer::Renderer.new
  end

  def show
    @blog = contentful.entries(content_type: 'b', include: 10, 'fields.slug[match]' => params[:id]).first
    @renderer = RichTextRenderer::Renderer.new
  end
end
