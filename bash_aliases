# vi mode for bash
set -o vi

# Get latest vimrc from github
alias updatevim="sudo git -C /etc/vim pull"
alias updatedotfiles="git -C ~/.dotfiles pull && source ~/.bashrc"

nginx_safe_reload() {
    if sudo nginx -t; then
        echo "Configuration is valid. Reloading Nginx..."
        sudo systemctl reload nginx
    else
        echo "Configuration is invalid. Aborting reload."
    fi
}


alias useroot="sudo -i -u root"

alias ngcheck='sudo nginx -t'
alias ngrestart='nginx_safe_reload'
alias ngstop='sudo systemctl stop nginx'
alias ngstart='sudo systemctl start nginx'
alias ngstatus='sudo systemctl status nginx'

alias msrestart='sudo systemctl restart mysql'
alias msstop='sudo systemctl stop mysql'
alias msstart='sudo systemctl start mysql'
alias msstatus='sudo systemctl status mysql'

set -o vi # Turn on vi mode in bash
# Customizations for vi mode in bash kept in this file
if [ -f ~/.inputrc ]; then
    bind -f ~/.inputrc
fi 
