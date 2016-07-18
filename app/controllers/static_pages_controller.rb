class StaticPagesController < ApplicationController
  def home
  end
  def download_resume
  	send_file("#{Rails.root}/public/LAURIER MANTEL JANUARY JULY 18.pdf",
              filename: "LAURIER MANTEL JULY 18.pdf",
              type: "application/pdf")
  end
end
