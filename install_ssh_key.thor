require 'rubygems'
require 'net/sftp'
require 'highline'

class InstallSshKey < Thor::Group
  argument :host, :type => :string, :desc => "The host to install your key on"
  desc "Installs your SSH key on a remote host"

  def install
    cli = HighLine.new
    username = cli.ask("Enter your username: ") { |q| q.default = ENV['USER'] }
    password = cli.ask("Enter your password: ") { |q| q.echo = false }
    key = cli.ask("Enter your key file location: ") { |q| q.default = '~/.ssh/id_rsa.pub' }
    key = File.expand_path(key)

    Net::SFTP.start(host, username, :password => password) do |sftp|
      sftp.mkdir!('.ssh', :permissions => 0700) rescue true
      current_keys = sftp.download!(".ssh/authorized_keys") rescue ''
      new_key = File.read(key) rescue ''

      unless current_keys.index(new_key)
        sftp.file.open(".ssh/authorized_keys", "w", 0600) do |f|
          f.puts current_keys unless current_keys.empty?
          f.puts new_key unless new_key.empty?
        end
      end
    end

    puts "#{key} installed for #{username} on #{host}."
    puts "Try 'ssh #{username}@#{host} to test it."
  end
end
