Ducula - A zsh-theme inspired by the Dracula project
====================================================

Prompt features
---------------
 * Job status: Indicates if jobs are running in the background :coffee: (idea from agnoster theme)
 * Username abbreviations: Uses a different username if the corresponding mapping was set (idea from dieter theme)
 * Hostname abbreviations: Uses a different hostname if the corresponding mapping was set (idea from dieter theme)
 * Virtual environments: Shows the name of activated virtual environment via ${VIRTUAL_ENV}
 * Current path: Displays the full current working directory
 * Return status: Shows the error return code (:bat:/:duck:)
 * Git messages: Uses `git_super_status` from the git-prompt plugin
 * Prompt time: Timestamp (hh:mm)

Example
-------

![ducula prompt theme](ducula_showcase.png)


Installation
------------

Clone the repository into your custom oh-my-zsh themes folder:

    git clone git@github:janjoswig/Ducula.git ${ZSH_CUSTOM}/themes/Ducula

Set the theme in your .zshrc:

   ZSH_THEME="Ducula/ducula"

Links
-----

R. Zhao: This blog post (https://rzhao.io/blog/2015/08/26/zsh-prompt/) was the starting point for the theme

The agnoster theme: <https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/agnoster.zsh-theme>

The dieter theme: <https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/dieter.zsh-theme>

The git-prompt plugin: <https://github.com/olivierverdier/zsh-git-prompt>

Dracula: I think the theme works best in connection with the Dracula (https://draculatheme.com/) color theme
