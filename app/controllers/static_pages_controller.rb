class StaticPagesController < ApplicationController
  def home
  end
  def download_resume
  	send_file("#{Rails.root}/public/LAURIER MANTEL JANUARY 2016 3.pdf",
              filename: "LAURIER MANTEL JANUARY 2016 3.pdf",
              type: "application/pdf")
  end
end
