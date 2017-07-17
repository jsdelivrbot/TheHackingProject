require 'bundler'
Bundler.require
 
# Authenticate a session with your Service Account
session = GoogleDrive::Session.from_service_account_key("client_secret.json")
 
# Get the spreadsheet by its title
spreadsheet = session.spreadsheet_by_title("Copie de Legislators 2017")
# Get the first worksheet
worksheet = spreadsheet.worksheets.first
# Print out the first 6 columns of each row
##worksheet.rows.each { |row| puts row.first(6).join(" | ") }

##worksheet.insert_rows(2, [["Hello!", "This", "was", "inserted", "via", "Ruby"]])


worksheet.insert_rows(worksheet.num_rows + 1, [["Hello!", "This", "was", "inserted", "at", "the", "bottom"]])
worksheet[2, 1] = "Updated again!"
worksheet.delete_rows(5, 2)

worksheet.save

