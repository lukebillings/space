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
    set_meta_tags title: @blog.title,
                    description: @blog.body.truncate(160),
                    keywords: 'space',
                    og: {
                      title: @blog.title,
                      url: blog_url(@blog),
                      description: @blog.body.truncate(160),
                      image: @blog.cover.try(:url)
                    }
  end
end
