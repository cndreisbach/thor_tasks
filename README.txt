git
---
thor git:whitespace_hook  # Install hook for automatically removing trailing ...

nginx
-----
thor nginx:add_site DIRECTORY  # Add a new site to nginx/sites-available
thor nginx:dis_site HOSTNAME   # Disable HOSTNAME
thor nginx:edit_site HOSTNAME  # Edit configuration for HOSTNAME
thor nginx:en_site HOSTNAME    # Enable HOSTNAME
thor nginx:restart             # Restart server
thor nginx:sites               # Show all available sites
thor nginx:start               # Start server
thor nginx:stop                # Stop server

root
----
thor install_ssh_key HOST  # Installs your SSH key on a remote host

