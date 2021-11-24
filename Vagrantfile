BOX_NAME = "ubuntu/focal64"
BOX_VERSION = "20211026.0.0"

VM_CPU = 2
VM_MEMORY = 2048

NODES = 1

Vagrant.configure("2") do |config|

    config.vm.provision "shell", path: "provision.sh"

    (1..WORKER_NODES).each do |n|
        config.vm.define "node-#{n}" do |worker|
            worker.vm.box = BOX_NAME
            worker.vm.box_version = BOX_VERSION

            worker.vm.hostname = "node-#{n}"
            worker.vm.network "public_network", ip: "192.168.1.10#{n}"

            worker.vm.provider "virtualbox" do |vm|
                vm.name = "Node #{n}"
                vm.cpus = VM_CPU
                vm.memory = VM_MEMORY
            end
        end
    end

end
