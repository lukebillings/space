module ApplicationHelper
  def contentful
  @client ||= Contentful::Client.new(
    access_token = ENV['CONTENTFUL_ACCESS_TOKEN'],
    space_id = ENV['CONTENTFUL_SPACE'],
    dynamic_entries: :auto,
    raise_errors: true
  )
  end
end

