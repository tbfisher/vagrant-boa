VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # https://github.com/tbfisher/packer-debian
  config.vm.box = 'tbfisher/debian78'

  config.ssh.username = 'root'
  config.ssh.forward_agent = true
  config.vm.hostname = 'aegir.local' # aegir installer will set this value
  config.vm.network :private_network, :auto_network => true

  # plugin https://github.com/dotless-de/vagrant-vbguest
  config.vbguest.auto_update = false

  # plugin https://github.com/cogitatio/vagrant-hostsupdater
  config.hostsupdater.aliases = [
    # aegir installer will create these
    'o1.sub.aegir.local',
    'chive.aegir.local',
    # Any sites that may be installed via aegir.
    'dev.example.com',
  ]

  # providers
  PROVIDER_NAME = 'aegir.local'
  PROVIDER_MEMORY = 2048
  PROVIDER_CPU_NUM = 2
  config.vm.provider :virtualbox do |provider|
    provider.memory = PROVIDER_MEMORY
    provider.cpus = PROVIDER_CPU_NUM
    provider.name = PROVIDER_MEMORY
  end
  config.vm.provider :vmware_fusion do |provider|
    provider.vmx["memsize"] = PROVIDER_MEMORY
    provider.vmx["numvcpus"] = PROVIDER_CPU_NUM
    provider.vmx["displayName"] = PROVIDER_MEMORY
  end

  # provisioners

  config.vm.provision "shell" do |shell|
    shell.path = 'provision/shell/install_boa.sh'
  end

end
