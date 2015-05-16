PATH=$HOME/.brew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin
HISTFILE=~/.zshrc_history
SAVEHIST=5000
HISTSIZE=5000

setopt inc_append_history
setopt share_history
setopt prompt_subst

if [[ -f ~/.myzshrc ]]; then
  source ~/.myzshrc
fi

# #### GIT style
source ~/.zsh/completion/git-completion.bash
zstyle ':completion:*:*:git:*' script ~/.zsh/completion/git-completion.zsh
fpath=(~/.zsh $fpath)
# ####

USER=`/usr/bin/whoami`
export USER
GROUP=`/usr/bin/id -gn $user`
export GROUP
MAIL="$USER@student.42.fr"
export MAIL
export MANPAGER=most

autoload -U colors && colors

PROMPT=">>%*<< %{$fg[yellow]%}%~%{$reset_color%}
%{$fg_bold[cyan]%}%n%{$reset_color%}%{$fg[red]%}@%{$reset_color%}%{$fg_bold[green]%}%m%{$reset_color%} [%{$fg_no_bold[yellow]%}%!%{$reset_color%}] %# "

#### Git Reverse Prompt
source ~/.zsh/rev_prmpt.zsh
RPS1='$(git_prompt_string)'
####

#### Aliases
source ~/.zsh/aliases.zsh
####