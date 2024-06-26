class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.5.4/besu-24.5.4.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "9d8774a69f90986477aabd2d7713ed22df1e2f29ed6b62a1889ac21675026f83"

  depends_on "openjdk" => "21+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
    bin.install "bin/evmtool"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
