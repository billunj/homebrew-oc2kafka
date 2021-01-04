# comment
# frozen_string_literal: true

# top-level class comment
class OC2Kafka < Formula
  desc "UUID Validator"
  homepage "https://bitbucket.org/infomaker/"
  url  "https://s3-eu-west-1.amazonaws.com/cca-dev-bill-temp/oc2kafka/oc2kafka-2021-01-04T155759-b737837.tar.gz"
  sha256 "8e2e420d697b842caa6a797d27925308b6b86f0da8f4b56f0dfcf6ab12bc014f"

  def install
    bin.install "oc2kafka"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test oc-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/oc2kafka"
  end
end
