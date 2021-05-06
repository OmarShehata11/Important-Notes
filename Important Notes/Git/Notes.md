# Update the URL of origin remote using SSH instead of HTTPS
```bash
git remote set-url origin git@github.com:username/repo.git
```

# Make Git store the username and password and it will never ask for them.
```bash
git config --global credential.helper store
```

# Have the username and password for a session (cache it);
```bash
git config --global credential.helper cache
```

# You can also set a timeout for the above setting
```bash
git config --global credential.helper 'cache --timeout=600'
```

# to move the Master to the HEAD if they are no in the same commit :
```bash
git branch -f master HEAD
# try this too later
git rebase HEAD master
```

# to see all the commits
```bash
git log --all --decorate -oneline --graph # adog
```

# to change form commit to another
```bash
git checkout <the commit code>
```