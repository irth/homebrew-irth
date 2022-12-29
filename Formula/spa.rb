require 'formula'
class Spa < Formula
  homepage 'https://github.com/irth/spa'
  version '1.1'

  if Hardware::CPU.arm?
    url 'https://github.com/irth/spa/releases/download/v1.1/spa.darwin.arm64'
    sha256 '56d742a6c4810be433da602ea662eb6beed1a55ee4e10e09eb71a29abc864729'
  else
    url 'https://github.com/irth/spa/releases/download/v1.1/spa.darwin.amd64'
    sha256 '4ff0ee18993ab77196c5d4f30793929be4981465d6231ce208bd8d92f71d5a81'
  end

  def install
    if Hardware::CPU.arm?
      bin.install "spa.darwin.arm64" => "spa"
    else
      bin.install "spa.darwin.amd64" => "spa"
    end
  end
end
