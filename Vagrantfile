$msg = <<MSG
----------------------------------------------------------
The machine is up and running. Visit the application here:

  http://localhost:5000
----------------------------------------------------------
MSG

Vagrant.configure("2") do |python|
  python.vm.post_up_message = $msg
  python.vm.box = "ubuntu/bionic64"
  python.vm.network "forwarded_port", guest: 5000, host: 5000
  python.vm.provision "ansible" do |ansible|
    ansible.playbook = "python_sqli.yml"
    ansible.compatibility_mode = "2.0"
  end
end
