# profile
Linux user profiles with productivity aliases for Oracle/grid environments.

## Install

```bash
cd "${HOME}"
rm -rf "${HOME}/github-bash_profile" || { echo "nie moge usunac katalogu - wychodze" ; exit 11; }
git clone git+ssh://git@github.com/pmatuszy/github-bash_profile.git
cd github-bash_profile
dos2unix bashrc bash_profile install.sh
./install.sh
```

Or use `./install.sh batch` for non-interactive install.