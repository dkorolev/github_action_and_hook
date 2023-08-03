# Demo

The [.autogen](https://github.com/dkorolev/github_action_and_hook/pull/1/files) file in [pull request #1](https://github.com/dkorolev/github_action_and_hook/pull/1) is added automatically via a git hook.

To make it work, I've run `./.internal/configure_git_hook.sh` after cloning the repo. Alternatvely, before committing, I could invoke `./.internal/wc_update.sh` manually.

# Setup

After the action is run at least once, to make it mandatory, add the respective branch protection rule via this or a similiar [URL](https://github.com/dkorolev/github_action_and_hook/settings/branch_protection_rules/new).

![image](https://github.com/dkorolev/github_action_and_hook/assets/2159447/2479085d-cc16-42fe-8845-d49f65852c92)
