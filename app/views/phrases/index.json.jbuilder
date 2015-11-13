json.array!(@phrases) do |phrase|
  json.extract! phrase, :id, :english, :traditional, :pinyin, :list_id
  json.url phrase_url(phrase, format: :json)
end
