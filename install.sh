if ! [ -x "$(command -v brew)" ]; then
    echo "Homebrew is not installed" 
    exit 1
fi

brew tap homebrew/bundle
brew bundle

echo "Sourcing .bash_profile"
echo "[ -f $PWD/.bash_profile ] && source $PWD/.bash_profile" >> ~/.bash_profile

echo "Sourcing .vimrc"
echo "source $PWD/.vimrc" >> ~/.vimrc
