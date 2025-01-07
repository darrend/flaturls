require 'open-uri'
# GDRIVE_FLATURLS_SHARE_LINK
# Replace with your shared Google Drive link
shared_link = ENV['GDRIVE_FLATURLS_SHARE_LINK']
file_id = shared_link.match(/[-\w]{25,}/)[0]
public_url = "https://drive.google.com/uc?export=download&id=#{file_id}"

# Read the file content
file_content = URI.open(public_url).read
puts file_content