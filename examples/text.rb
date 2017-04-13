require 'rubygems'

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib')

require 'prawn'
require 'prawn/forms'

Prawn::Document.generate "text_field.pdf" do |pdf|

  pdf.text("Forms Test", :size => 20)

  pdf.draw_text('First Name:', :at => [30, 600], :size => 12)
  pdf.text_field("fname", 100, 600+12, 200, 16)

  pdf.draw_text("Last Name:", :at => [30, 560], :size => 12)
  pdf.text_field("lname", 100, 560+12, 200, 16)

  pdf.draw_text("Subscribe:", :at => [30, 520], :size => 12)
  pdf.checkbox("subscribe", 100, 520+12, 16, 16, :default => true)

end
