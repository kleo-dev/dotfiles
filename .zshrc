[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"

# ZSH_THEME="edvardm"
# export FPATH="~/eza/completions/zsh:$FPATH"
# skip_aliases=true


# [[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"


# [[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  # source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# CodeWhisperer pre block. Keep at the top of this file.
# [[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="edvardm"

skip_aliases=true

export FPATH="~/eza/completions/zsh:$FPATH"

# .zshrc
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
autoload -Uz compinit
ZSH_COMPDUMP=${ZSH_COMPDUMP:-${ZDOTDIR:-~}/.zcompdump}

# cache .zcompdump for about a day
if [[ $ZSH_COMPDUMP('#qNmh-20') ]]; then
  compinit -C -d "$ZSH_COMPDUMP"
else
  compinit -i -d "$ZSH_COMPDUMP"; touch "$ZSH_COMPDUMP"
fi
{
  # compile .zcompdump
  if [[ -s "$ZSH_COMPDUMP" && (! -s "${ZSH_COMPDUMP}.zwc" || "$ZSH_COMPDUMP" -nt "${ZSH_COMPDUMP}.zwc") ]]; then
    zcompile "$ZSH_COMPDUMP"
  fi
} &!





setopt COMBINING_CHARS

# ########################################################################################################################
# environment variables
# ########################################################################################################################



# remove duplicat entries from $PATH
# zsh uses $path array along with $PATH
typeset -U PATH path



export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export PATH="/opt/homebrew/opt/libiconv/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"



#For compilers to find readline you may need to set:
#  export LDFLAGS="-L/opt/homebrew/opt/readline/lib"
#  export CPPFLAGS="-I/opt/homebrew/opt/readline/include"

#export PKG_CONFIG_PATH="/opt/homebrew/opt/readline/lib/pkgconfig"


export ANTIDOTE_HOME="$HOME/.cache/antidote"
export ZSH_CACHE_DIR="$HOME/.cache/zshcache"

export HOMEBREW_PREFIX=/opt/homebrew








export PYTHONDEBUG=1
export BETTER_EXCEPTIONS=1





export SCCACHE_ERROR_LOG=/tmp/sccache_log.txt


export RUST_BACKTRACE=full
export CARGO_INCREMENTAL=0
export RUSTC_WRAPPER=sccache

export CMAKE_C_COMPILER_LAUNCHER=sccache
export CMAKE_CXX_COMPILER_LAUNCHER=sccache
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"

export CFLAGS="-I$(brew --prefix)/include" 
export CPPFLAGS="-I/opt/homebrew/include"
export LDFLAGS="-L$(brew --prefix)/lib"




#export LDFLAGS="-L/opt/homebrew/lib"

export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/postgresql@16/lib"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/postgresql@16/include"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/mysql-client/lib"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/mysql-client/include"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/sqlite/lib"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/sqlite/include"


export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/lib/pkgconfig"
export PKG_CONFIG_PATH="/opt/homebrew/opt/postgresql@16/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/mysql-client/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig:$PKG_CONFIG_PATH"

export VCPKG_ROOT="$HOME/vcpkg"
export FZF_BASE="/opt/homebrew/bin/fzf"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"



export ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion history)
export ZSH_AUTOSUGGEST_COMPLETION_IGNORE="\#*"



export CLICOLOR=1
export LESS="$LESS -R"
export LESSOPEN='|~/.lessfilter %s'
export LESSCOLORIZER='bat'
export MANPAGER='manpager --style=plain | less --pattern=^\\S+'


export warhol_ignore_du=1
export warhol_ignore_df=1
export warhol_ignore_diff=1
export warhol_ignore_ls=1
export warhol_ignore_ps=1




# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# source $ZSH/oh-my-zsh.sh

### ANTIDOTE PLUGIN LOADING


# Set the name of the static .zsh plugins file antidote will generate.
zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins.zsh
# zsh_plugins=()

# Ensure you have a .zsh_plugins.txt file where you can add plugins.
[[ -f ${zsh_plugins:r}.txt ]] || touch ${zsh_plugins:r}.txt

# Lazy-load antidote.
fpath+=(${ZDOTDIR:-~}/.antidote)
autoload -Uz $fpath[-1]/antidote


# Generate static file in a subshell when .zsh_plugins.txt is updated.
if [[ ! $zsh_plugins -nt ${zsh_plugins:r}.txt ]]; then
  (antidote bundle <${zsh_plugins:r}.txt >|$zsh_plugins)
fi

source $zsh_plugins
####

# User configuration

source $HOME/.iterm2_shell_integration.zsh


# Append a command directly
# zvm_after_init_commands+=()

# appearance
autoload -Uz promptinit && promptinit && prompt powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# ##########################################[Lazy Loading scripts ]###############################################################

# alias cat="bat"
# alias cloc="tokei"
# alias curl="curlie"

# alias df="duf"
# alias du="dust"
# alias diff="delta"
# alias find="fd"
# alias grep="rga --color=auto"
# alias egrep="rga -F"
# alias hexadump="hexyl"
# alias ps="procs"
# alias sed="sd"

# alias top="btm"


# -------------------------------------commands--------------------------#



# Overwrite existing commands for better defaults
# alias cp="cp -i"

# alias mv="mv -i"

# alias rm="rm -i"

# alias mkdir="mkdir -p"

#macchina
# [ "$(date +%j)" != "$(cat ~/.mf.prevtime 2>/dev/null)" ] && { macchina > ~/.mf; date +%j > ~/.mf.prevtime; cat --style=plain ~/.mf; } || cat --style=plain ~/.mf


# git repository greeter aka onefetch
# last_repository=
# check_directory_for_new_repository() {
    # current_repository=$(git rev-parse --show-toplevel 2> /dev/null)

    # if [ "$current_repository" ] && \
       # [ "$current_repository" != "$last_repository" ]; then
        # onefetch
    # fi
    # last_repository=$current_repository
# }
# cd() {
    # z "$@"
    # check_directory_for_new_repository
# }




# mcd (){
    # mkdir -p -- "$1" &&
    # z "$1"
# }

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# CodeWhisperer post block. Keep at the bottom of this file.
# [[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
# source ~/powerlevel10k/powerlevel10k.zsh-theme
# source ~/powerlevel10k/powerlevel10k.zsh-theme
# source ~/powerlevel10k/powerlevel10k.zsh-theme
unalias -m '*'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
