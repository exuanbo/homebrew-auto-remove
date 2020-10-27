class BrewAutoremove < Formula
  homepage 'https://github.com/exuanbo/homebrew-autoremove'
  url 'https://github.com/exuanbo/homebrew-autoremove.git', tag: '1.0.0'
  revision 1

  head 'https://github.com/exuanbo/homebrew-autoremove.git'

  def install
    bin.install 'cmd/brew-autoremove.rb'
  end

  def caveats
    <<~EOS
      You can uninstall this formula, as `brew tap exuanbo/autoremove` is all that's needed to install autoremove and keep it up to date.
    EOS
  end

  # test do
  #   system 'brew', 'autoremove', '--help'
  # end
end
