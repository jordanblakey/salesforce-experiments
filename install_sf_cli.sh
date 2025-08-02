#!/usr/bin/bash
# https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_install_cli.htm#sfdx_setup_install_cli_linux
echo "Installing/updating Salesforce CLI from tarball."

cd "$HOME/Downloads" || (echo "downloads directory not found, exiting." && exit)
wget https://developer.salesforce.com/media/salesforce-cli/sf/channels/stable/sf-linux-x64.tar.xz
sudo mkdir -p /opt/sf/
sudo tar xJf sf-linux-x64.tar.xz -C /opt/sf/ --strip-components 1
rm sf-linux-x64.tar.xz*

sf autocomplete
printf "%s" "$(sf autocomplete script bash)" >> "$HOME/.bashrc"; source "$HOME/.bashrc"
echo "Finished adding sf autocompletions to ~/.bashrc..."

echo "Latest Salesforce CLI installation complete."
echo "Restart bash to enable autocompletions."
