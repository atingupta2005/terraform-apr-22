# Install the Azure CLI on Linux
```
curl -L https://aka.ms/InstallAzureCli | bash
```

## Uninstall
```
rm -r $HOME/lib/azure-cli
rm $HOME/bin/az
rm -rf ~/.azure
```
- Modify your $HOME/.bash_profile file to remove the following line:
```
$HOME/lib/azure-cli/az.completion
```

- Reload your shell's command cache.
```
hash -r
exit
```

- Login
```
az login
```
