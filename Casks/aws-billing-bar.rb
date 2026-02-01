cask "aws-billing-bar" do
  version "1.0.0"
  sha256 "d39b9cb0ecb067195a99f1aa9ab7d2a9becd8c180cc682cc5dc4f226a850b7ba"

  url "https://github.com/masesor/AwsBillingBar/releases/download/v#{version}/AwsBillingBar-#{version}.zip"
  name "AWS Billing Bar"
  desc "Menu bar app to monitor AWS billing costs across multiple accounts"
  homepage "https://github.com/masesor/AwsBillingBar"

  depends_on macos: ">= :sonoma"

  app "AWS Billing Bar.app"

  zap trash: [
    "~/Library/Preferences/com.github.awsbillingbar.plist",
    "~/Library/Application Support/AwsBillingBar",
  ]
end
