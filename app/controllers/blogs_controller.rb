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
    body_text = extract_text_from_contentful_body(@blog.body)
    set_meta_tags title: @blog.title,
                    description: truncate_text(body_text, 160),
                    keywords: 'space',
                    og: {
                      title: @blog.title,
                      url: blog_url(@blog),
                      description: truncate_text(body_text, 160),
                      image: @blog.cover.try(:url)
                    }
                    card: "summary_large_image",  # Specify the card type
                    site: "@SpaceflightIDX",  # Your Twitter account
                    title: @blog.title,
                    description: truncate_text(body_text, 200),  # Twitter limits description to 200 characters
                    image: @blog.cover.try(:url)
  end



  private

  def extract_text_from_contentful_body(body_hash)
    # Extract the text content from the Contentful body hash
    # This depends on the structure of your Contentful data
    # You might need to adapt this based on your actual Contentful model
    # For example, if the text is nested within 'content', you might use:
    # body_hash.dig('content', '0', 'content', '0', 'value')
    body_hash['content'][0]['content'][0]['value']
  end

  def truncate_text(text, length)
    # Truncate the text to the specified length
    # You might want to handle cases where the text is shorter than the specified length
    text.truncate(length)
  end


end
