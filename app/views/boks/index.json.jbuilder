json.array!(@boks) do |bok|
  json.extract! bok, :id, :title, :author
  json.url bok_url(bok, format: :json)
end
