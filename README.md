# Welcome to My Vim 
This is where I store my backup .vimrc file and plugin. So that when I install new linux or use another computer, I can synchronize my vim setting quickly.

#### If you just start learning vim, there're mainly 2 ways to learn.
1. Learn by your self by using vim as your main text editor and when you have a problem or you want to use more function, do searching. I think this is the best way to learn vim because you must do searching alot - this is a good skill - and when you finish searching, you actually use that function you want or solved the problem that you found.
2. Learn from other people. You can learn from websites, youtube or your friends. You can view __.vimrc__ of other people (like me), your friends or on the internet. Ask people what plugin that they use, how to install plugin or something like that...

### This is the second way that you can learn from me. But don't forget to learn by your self.

## How to copy my vim
1. Clone my repository.
2. Move everything from my repository to your home directory.
3. Install myvim-install.
4. Install all plugins.
5. Add some code to .bashrc.
6. Learn more about vim!

#### 1. Clone my repository
clone with SSH
```
$ git clone git@github.com:kaisukez/my-vim.git
```
or clone with HTTPS
```
$ git clone https://github.com/kaisukez/my-vim.git
```

#### 2. Move everything from my repository to your home directory
```
$ cd my-vim
$ mv .vimrc ~
$ mv .bashrc.formyvim ~
$ mv myvim-install.sh ~
$ mv .vim ~
$ mv .undodir ~
```

#### 3. Install myvim-install
```
$ cd ~
$ sh myvim-install.sh
```

#### 4. Install all plugins
```
$ vim +PluginInstall +qall
```

#### 5. Add some code to .bashrc
```
$ cat .bashrc.formyvim >> .bashrc
```

#### 6. Learn more about vim!
Now you have set everything up. Next step is to learn vim, learn how to install plugins, learn how to edit __.vimrc__. Sometimes you have a ploblem with this tutorial or you don't understand some of them. Don't worry, there's google, so you can find the answer there. If you want to learn about vim, you have to research alot, read everything, try every shortcut keys, try some plugins you want, customize your _.vimrc_. When you have learned some basics, you will enjoy using vim and love vim like me.
