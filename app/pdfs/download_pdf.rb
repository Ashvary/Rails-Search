class DownloadPdf < Prawn::Document
	def initialize(stud)
		super()
		@stud = stud
		details
		line_items
	end
	def details
		text "Students Data" , size: 30 , style: :bold	
	end

	def line_items
		move_down 20
		table item_in_row do
			row(0).font_style = :bold
			self.header = true
		end
	end
	def item_in_row
		[["Name" , "Phone" , "Email", "Gender" , "Youtube Link"]] +
		@stud.map do |item|
			[item.name , item.phone , item.email , item.gender , item.link]
		end
	end
end