class StaticPagesController < ApplicationController
  def home
  end
  def download_resume
  	send_file("#{Rails.root}/public/LaurierMantel.pdf",
              filename: "LaurierMantel.pdf",
              type: "application/pdf")
  end
end
