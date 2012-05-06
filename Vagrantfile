# -*- mode: ruby -*-
# vi: set ft=ruby :

hosts = {
  :vhost1 => {
    :ipaddress => "10.42.0.101",
  },
  :vhost2 => {
    :ipaddress => "10.42.0.102",
  },
}

Vagrant::Config.run do |global_config|
  hosts.each_pair do |name, options|
    global_config.vm.define name do |config|
      vm_name = "#{name}-vagrant-test"
      ipaddress = options[:ipaddress]
      
      # Use the Ubuntu 10.04 LTS base image for now
      config.vm.box = "debian-squeeze-32"
      config.vm.box_url = "https://joneskoo.kapsi.fi/vagrant-debian-squeeze-32.box"

      config.vm.boot_mode = :headless
      config.vm.host_name = vm_name
      config.vm.network :hostonly, ipaddress

      # Dummy vhost structure for testing
      config.vm.share_folder "v-www", "/srv/www", "srv-www"

      # Provision with Puppet
      config.vm.provision :puppet do |puppet|
          puppet.manifests_path = "puppet"
          puppet.manifest_file  = "base.pp"
      end
    end
  end

end
