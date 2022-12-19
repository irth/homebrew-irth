require 'formula'
class Spa < Formula
  homepage 'https://github.com/irth/spa'
  version '1.0'

  if Hardware::CPU.arm?
    url 'https://github.com/irth/spa/releases/download/v1.0/spa.darwin.arm64'
    sha256 "9e0bbfeffdac66547933d88c0a5b509eaf4f03823d7b7d69434235b7ca58fc2b"
  else
    url 'https://github.com/irth/spa/releases/download/v1.0/spa.darwin.amd64'
    sha256 '9be085e4037592396e18dd8d5cbb893566f6b71ccf99ecae3c01417e4bd95ec2'
  end

  def install
    if Hardware::CPU.arm?
      bin.install "spa.darwin.arm64" => "spa"
    else
      bin.install "spa.darwin.amd64" => "spa"
    end
  end
end
