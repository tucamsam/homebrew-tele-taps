# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Forge < Formula
    include Language::Python::Virtualenv
  
    desc "forge"
    homepage "https://github.com/TeleTrackingTechnologies/forge"
    url "https://github.com/TeleTrackingTechnologies/forge.git",
      :branch => "add-plugin-functionality",
      :using => :git
    version "1.0.0"
  
    depends_on "python3"
  
    def install

      FileUtils.mkdir_p '/usr/local/etc/forge/plugins'
      Dir.chdir "forge"
      FileUtils.cp_r('_internal_plugins/manage_plugins', '/usr/local/etc/forge/plugins')
      Dir.chdir ".."
      venv = virtualenv_create(libexec, "python3")
      venv.pip_install_and_link(File.read('./requirements.txt'))
      virtualenv_install_with_resources
    end
  
    test do
      system "true"
    end
  end
  