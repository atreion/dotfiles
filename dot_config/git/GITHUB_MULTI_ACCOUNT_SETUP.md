# Multi-Account GitHub Setup

This setup allows you to work with multiple GitHub accounts (work and personal) seamlessly using SSH keys, Git configuration, and GitHub CLI.

## Accounts Configured

- **Work Account**: `david.drottson@pinmeto.com` (david-drottson)
- **Personal Account**: `5829476+atreion@users.noreply.github.com` (atreion)

## SSH Configuration

Your SSH config (`~/.ssh/config`) includes:

- `github-work`: Uses work SSH key (`~/.ssh/id_ed25519`)
- `github-personal`: Uses personal SSH key (`~/.ssh/id_ed25519_atreion`)
- `github.com`: Default (work account)

## Git Configuration

### Global Configuration

- Default: Work account (`david.drottson@pinmeto.com`)
- Uses SSH protocol
- macOS keychain for credentials

### Directory-based Configuration

- `~/ws/`: Work account (auto-configured)
- `~/proj/`: Personal account (auto-configured)

## Helper Scripts

All scripts are located in `~/bin/`:

### Account Management

- `git-work`: Switch to work account
- `git-personal`: Switch to personal account
- `git-status`: Show current account status

### Repository Cloning

- `clone-work <repo>`: Clone repository using work account
- `clone-personal <repo>`: Clone repository using personal account

### Setup

- `setup-github-accounts`: Initial authentication setup

## Usage Examples

### 1. Check Current Status

```bash
git-status
```

### 2. Switch Between Accounts

```bash
# Switch to work account
git-work

# Switch to personal account
git-personal
```

### 3. Clone Repositories

```bash
# Clone work repository
clone-work company/repo-name
clone-work https://github.com/company/repo-name.git

# Clone personal repository
clone-personal atreion/my-project
clone-personal https://github.com/atreion/my-project.git
```

### 4. Manual Repository Setup

```bash
# For work repositories in ~/ws/
cd ~/ws/
git clone git@github-work:company/repo.git

# For personal repositories in ~/proj/
cd ~/proj/
git clone git@github-personal:atreion/repo.git
```

## Directory Structure

```
~/ws/                    # Work repositories (auto work config)
~/proj/                  # Personal repositories (auto personal config)
```

## GitHub CLI Usage

```bash
# Switch GitHub CLI account
gh auth switch --user david.drottson@pinmeto.com  # Work
gh auth switch --user atreion                     # Personal

# Check current user
gh api user --jq .login
```

## Troubleshooting

### SSH Key Issues

```bash
# Check SSH keys
ssh-add -l

# Add keys to keychain
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
ssh-add --apple-use-keychain ~/.ssh/id_ed25519_atreion

# Test SSH connections
ssh -T git@github-work
ssh -T git@github-personal
```

### Git Configuration Issues

```bash
# Check current Git config
git config --global user.name
git config --global user.email

# Check directory-specific config
git config user.name
git config user.email
```

### GitHub CLI Issues

```bash
# Check authentication status
gh auth status

# Re-authenticate if needed
gh auth login --hostname github.com --git-protocol ssh --web
```

## Important Notes

1. **SSH Keys**: Make sure both SSH keys are added to their respective GitHub accounts
2. **Directory Structure**: Place repositories in the correct directories for automatic configuration
3. **GitHub CLI**: You may need to authenticate both accounts initially using `setup-github-accounts`
4. **URL Rewriting**: The configuration automatically rewrites `git@github.com:` to use the appropriate host alias

## Security

- SSH keys are stored in macOS keychain
- Each account uses its own SSH key
- Directory-based configuration prevents accidental commits with wrong identity
- Credentials are managed securely through macOS keychain

## Next Steps

1. Run `setup-github-accounts` to authenticate both accounts with GitHub CLI
2. Test the setup by cloning repositories from both accounts
3. Create the directory structure (`~/ws/`, `~/proj/`) for automatic configuration
4. Use the helper scripts for easy account switching and repository management
