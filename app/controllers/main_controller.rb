class MainController < ApplicationController
  def index
    @qr_linkedin = QrCodeGenerator.generate("https://www.linkedin.com/in/chrisjfagg/")
    @qr_github = QrCodeGenerator.generate("https://github.com/chrisfdev00")

    @cv = Document.first
  end

  def direct_to_admin
    redirect_to "/"
  end

end
