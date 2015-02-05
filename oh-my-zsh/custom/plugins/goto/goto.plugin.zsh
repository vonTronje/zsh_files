goto() { cd $GOPATH/src/codevault.io/go_projects/$1; }
_goto() { _files -W $GOPATH/src/codevault.io/go_projects -/; }
compdef _goto goto
