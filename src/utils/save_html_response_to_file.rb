# frozen_string_literal: true

def save_html_response_to_file(response_body, file_path)
  File.open(file_path, 'w') do |file|
    file.write(response_body)
  end
  puts "Response saved to #{file_path}"
end
