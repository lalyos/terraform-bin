cask :v1 => 'terraform' do
  version '0.3.7.dev'
  sha256 'a57bcccf9c4169048ff0759b061931389434dce9f76c651cb9be772d9f53205e'

  # bintray.com is the official download host per the vendor homepage
  url "https://s3-eu-west-1.amazonaws.com/sequenceiq/terraform_#{version}_darwin_amd64.zip"
  homepage 'http://www.terraform.io/'
  license :mpl

  binary 'terraform'
  binary 'terraform-provider-atlas'
  binary 'terraform-provider-aws'
  binary 'terraform-provider-cloudflare'
  binary 'terraform-provider-cloudstack'
  binary 'terraform-provider-consul'
  binary 'terraform-provider-digitalocean'
  binary 'terraform-provider-dnsimple'
  binary 'terraform-provider-google'
  binary 'terraform-provider-heroku'
  binary 'terraform-provider-mailgun'
  binary 'terraform-provider-null'
  binary 'terraform-provisioner-file'
  binary 'terraform-provisioner-local-exec'
  binary 'terraform-provisioner-remote-exec'
end