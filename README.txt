git
---
thor git:whitespace_hook  # Install hook for automatically removing trailing whitespace in a project

metrics
-------
thor metrics:flay DIRS   # Run flay on the specified directories
thor metrics:flog DIRS   # Flog the specified directories
thor metrics:reek DIRS   # Run reek on the specified directories
thor metrics:roodi DIRS  # Run roodi on the specified directories

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
thor install_ssh_key HOST           # Installs your SSH key on a remote host
thor watch COMMAND PATH1 PATH2 ...  # Run COMMAND whenever anything in PATHS changes.

