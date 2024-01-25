module ApplicationHelper
  def contentful
  @client ||= Contentful::Client.new(
    access_token: 'r_T0GhPmxLbxYxMnrKVetO7qgpRfwRjlC0-W4WxLzxA',
    space: '9n79felhh7gb',
    dynamic_entries: :auto,
    raise_errors: true
  )
  end
end

