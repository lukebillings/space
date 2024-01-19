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
                   description: @blog.meta_description,
                   keywords: @blog.keywords,
                   og: {
                     title: @blog.title,
                     description: @blog.meta_description,
                     type: 'article',
                     url: blog_url(@blog),
                     image: @blog.cover_image_url
                   }
  end
end
