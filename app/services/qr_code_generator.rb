require "rqrcode"

class QrCodeGenerator
  def self.generate(url)
    qr = RQRCode::QRCode.new(url)
    qr.as_svg(
      module_size: 6
    )
  end
end
