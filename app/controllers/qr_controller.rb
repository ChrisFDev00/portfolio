class QrController < ApplicationController

  def qr_test
    qr_code = QrCodeGenerator.generate("https://google.com")

  end

end
