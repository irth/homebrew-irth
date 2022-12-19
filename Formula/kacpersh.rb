require 'formula'
class Kacpersh < Formula
  homepage 'https://github.com/irth/kacpersh'
  version '0.1'

  if Hardware::CPU.arm?
    url 'https://github.com/irth/kacpersh/releases/download/v1.0/kacpersh.darwin.arm64'
    sha256 '0790eb2b0dd11feac16f9d04f196f3053f3c4ed886fa917f17c341a4f3aeec23'
  else
    url 'https://github.com/irth/kacpersh/releases/download/v1.0/kacpersh.darwin.amd64'
    sha256 '7ef4b3b06871e12d979b6de7ab781854fd7cf2cbf86578370b19ca13fb13f25a'
  end

  def install
    if Hardware::CPU.arm?
      bin.install "kacpersh.darwin.arm64" => "kacpersh"
    else
      bin.install "kacpersh.darwin.amd64" => "kacpersh"
    end
  end
end
