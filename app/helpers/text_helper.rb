module TextHelper
    
    def truncate_words(text, options = {})
    length = options.fetch(:length, 5)
    omission = options.fetch(:omission, "...")
    words = text.split(/\s+/)
    truncated_words = words.first(length)
    truncated_text = truncated_words.join(" ")
    truncated_text += omission if words.length > length
    puts "#{truncated_text}"
    truncated_text
  end

end