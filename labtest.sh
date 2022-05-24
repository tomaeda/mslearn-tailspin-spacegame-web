az login --identity --username 6f99a0d4-c388-489b-8fec-e3f7519ef514
vmname=`hostname`
az vm extension set -n AADSSHLoginForLinux --publisher Microsoft.Azure.ActiveDirectory -g T0839-LABS1659514392000 --vm-name $vmname
az vm extension set -n ConfigurationforLinux --publisher Microsoft.GuestConfiguration -g T0839-LABS1659514392000 --vm-name $vmname
az vm extension set -n OmsAgentForLinux --publisher Microsoft.EnterpriseCloud.Monitoring -g T0839-LABS1659514392000 --vm-name $vmname
