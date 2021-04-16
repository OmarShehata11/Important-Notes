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