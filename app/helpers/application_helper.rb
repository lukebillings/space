module ApplicationHelper
  def contentful
  @client ||= Contentful::Client.new(
    access_token: '',
    space: '',
    dynamic_entries: :auto,
    raise_errors: true
  )
  end
end
