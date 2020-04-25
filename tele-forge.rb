class TeleForge < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage "https://github.com/TeleTrackingTechnologies/forge"
  url "https://files.pythonhosted.org/packages/45/df/74b94c817b53f6af3bc7ee30f4a287d89f0f0622e60428fb83daf0a182dc/tele-forge-0.0.1.tar.gz"
  sha256 "1b85fd8f199262e7209c680ee27f9f144959d331c858518236772296c4f1d848"

  depends_on "python3"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/b8/e2/a3a86a67c3fc8249ed305fc7b7d290ebe5e4d46ad45573884761ef4dea7b/certifi-2020.4.5.1.tar.gz"
    sha256 "51fcb31174be6e6664c5f69e3e1691a2d72a1a12e90f872cbdb1567eb47b6519"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/82/75/f2a4c0c94c85e2693c229142eb448840fba0f9230111faa889d1f541d12d/colorama-0.4.3.tar.gz"
    sha256 "e96da0d330793e2cb9485e9ddfd918d456036c7149416295932478192f4436a1"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/bc/f2/a2191834e7f9bb34ff14a0c2db90d2bf8510cf74fa395544c9f10731dc25/gitdb-4.0.4.tar.gz"
    sha256 "6f0ecd46f99bb4874e5678d628c3a198e2b4ef38daea2756a2bfd8df7dd5c1a5"
  end

  resource "GitPython" do
    url "https://files.pythonhosted.org/packages/ac/3d/9fe11d9cf14b49553e8e35a4dce360e18f25f964638b631dc5b9ca23a88f/GitPython-3.1.1.tar.gz"
    sha256 "6d4f10e2aaad1864bb0f17ec06a2c2831534140e5883c350d58b4e85189dab74"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cb/19/57503b5de719ee45e83472f339f617b0c01ad75cba44aba1e4c97c2b0abd/idna-2.9.tar.gz"
    sha256 "7588d1c14ae4c77d74036e8c22ff447b26d0fde8f007354fd48a7814db15b7cb"
  end

  resource "pluginbase" do
    url "https://files.pythonhosted.org/packages/3d/3c/fe974b4f835f83cc46966e04051f8708b7535bac28fbc0dcca1ee0c237b8/pluginbase-1.0.0.tar.gz"
    sha256 "497894df38d0db71e1a4fbbfaceb10c3ef49a3f95a0582e11b75f8adaa030005"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/f5/4f/280162d4bd4d8aad241a21aecff7a6e46891b905a4341e7ab549ebaf7915/requests-2.23.0.tar.gz"
    sha256 "b3f43d496c6daba4493e7c431722aeb7dbc6288f52a6e04e7b6023b0247817e6"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/89/2f/8902ee436e7e24e059973f9d7cbc1a433df10c93239f59c1d8539a86a6a5/smmap-3.0.2.tar.gz"
    sha256 "b46d3fc69ba5f367df96d91f8271e8ad667a198d5a28e215a6c3d9acd133a911"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/57/6f/213d075ad03c84991d44e63b6516dd7d185091df5e1d02a660874f8f7e1e/tabulate-0.8.7.tar.gz"
    sha256 "db2723a20d04bcda8522165c73eea7c300eda74e0ce852d9022e0159d7895007"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/05/8c/40cd6949373e23081b3ea20d5594ae523e681b6f472e600fbc95ed046a36/urllib3-1.25.9.tar.gz"
    sha256 "3018294ebefce6572a474f0604c2021e33b3fd8006ecd11d62107a5d2a963527"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end