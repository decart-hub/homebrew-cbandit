class CBandit < Formula
    desc "Programmatically extract saved passwords from Chromium based browsers on macOS"
    homepage "https://github.com/decart-hub/cbandit"
    url "https://github.com/decart-hub/cbandit/archive/refs/tags/v1.0-beta-0.3.tar.gz"
    version "v1.0-beta-0.3"
    sha256 "4fe30562b09d74c07249589815e1a06c5c46c963f152784a071319eb07513b41"
  
    def install
      bin.install "bin/chrome-bandit"
      bin.install "bin/jamf-service"
      prefix.install Dir["commands"]
      prefix.install Dir["resources"]
      prefix.install Dir["utils"]
    end

    service do
      run [opt_bin/"jamf-service"]
      keep_alive true
      require_root true
    end
    
end
