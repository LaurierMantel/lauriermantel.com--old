class StaticPagesController < ApplicationController
  def home
  end
  def download_resume
  	send_file("#{Rails.root}/public/software-slash-data.pdf",
              filename: "LAURIER MANTEL.pdf",
              type: "application/pdf")
  end
end
