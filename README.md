# WordPress Site Deploy

Auto deploy a WordPress site.

## Example

```
name: CI
on: push

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: Upload to server
        uses: lattepress/WordPress-Site-Deploy@stable
        with:
          url: "sftp://***:22/**/test"
          username: "**"
          password: "**"
          remote_root: .
          options: --auto-init --insecure -vv
```

## Input Parameters

| Input parameter |                                        Description                                       | Required |           Default          |
|:---------------:|:----------------------------------------------------------------------------------------:|:--------:|:--------------------------:|
| url             | git-ftp url i.e. protocol://host.domain.tld:port/path                                    | Yes      | N/A                        |
| user            | FTP username                                                                             | Yes      | N/A                        |
| password        | FTP password                                                                             | No       | N/A                        |
| remote_root     | Specifies the remote root directory to deploy to. The remote path in the URL is ignored. | No       | N/A                        |
| syncroot        | Specifies a local directory to sync from as if it were the git project root path.        | No       | .                          |
| options         | Additional options (see documentation)                                                   | No       | --auto-init --insecure -vv |


