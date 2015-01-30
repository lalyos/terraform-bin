# Install terraform 0.3.7.dev

```
brew cask install https://gist.githubusercontent.com/lalyos/307cd3b2e6381ea9563f/raw/terraform.rb
```

## tl;dr

A couple of issues were fixed recently in [terraform](terraform.io):

- [providers/google: remove deprecated client secrets file](https://github.com/hashicorp/terraform/pull/884)
- [GCE ssh key insert as metadata fails after upgrading 0.35 to 0.36](https://github.com/hashicorp/terraform/issues/835)
- [GCE Error 400: Invalid value for field 'resource.metadata.items[1].key'](https://github.com/hashicorp/terraform/issues/757)

So a dev version: **0.3.7.dev** is compiled and uploaded to aws s3.