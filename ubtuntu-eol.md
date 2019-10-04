# What to do when your ubuntu distro is End-of-Life

Let's say you're using Ubuntu 13.04 (Raring Ringtail, released in April 2013) and it just went End-of-Life on you, because it's supported for only 6 months, and the deprecated packages are taken down after 12 months.

You'll probably figure this out the hard way. When you run `sudo apt-get update`, it will eventually report these errors:

```
Ign http://archive.ubuntu.com raring-updates/universe Sources/DiffIndex
Err http://security.ubuntu.com raring-security/main Sources
  404  Not Found [IP: 91.189.91.15 80]
Err http://security.ubuntu.com raring-security/universe Sources
  404  Not Found [IP: 91.189.91.15 80]
Err http://security.ubuntu.com raring-security/main amd64 Packages
  404  Not Found [IP: 91.189.91.15 80]
Ign http://archive.ubuntu.com raring-updates/main amd64 Packages/DiffIndex
Err http://security.ubuntu.com raring-security/universe amd64 Packages
  404  Not Found [IP: 91.189.91.15 80]

W: Failed to fetch http://security.ubuntu.com/ubuntu/dists/raring-security/main/source/Sources  404  Not Found [IP: 91.189.91.15 80]

W: Failed to fetch http://security.ubuntu.com/ubuntu/dists/raring-security/universe/source/Sources  404  Not Found [IP: 91.189.91.15 80]

W: Failed to fetch http://security.ubuntu.com/ubuntu/dists/raring-security/main/binary-amd64/Packages  404  Not Found [IP: 91.189.91.15 80]

W: Failed to fetch http://security.ubuntu.com/ubuntu/dists/raring-security/universe/binary-amd64/Packages  404  Not Found [IP: 91.189.91.15 80]
```

Visiting [http://archive.ubuntu.com/ubuntu/dists](http://archive.ubuntu.com/ubuntu/dists) does confirm that raring packages are indeed gone, while lucid, precise, saucy, and trusty are still there, as per their promised support schedule.

Some googling reveals that they're not deleted, but simply moved to [http://old-releases.ubuntu.com/ubuntu/dists/](http://old-releases.ubuntu.com/ubuntu/dists/), sort of a graveyard for insecure and unsupported packages.

To make `apt-get update` work, we simply need to edit `/etc/apt/sources.list` and update all URLs from `security.ubuntu.com` and `archive.ubuntu.com` to point to `old-releases.ubuntu.com`, as per the following sed command:

```bash
sudo sed -i.bak -r 's/(archive|security).ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
```

After this, `sudo apt-get update` seems to run without a hitch. Of course if you do this, you're accepting to use an insecure system, and should do `sudo apt-get install update-manager-core; do-release-upgrade` as soon as possible.

**SOURCES**:

* https://help.ubuntu.com/community/EOLUpgrades
* https://help.ubuntu.com/community/SaucyUpgrades
* https://gist.github.com/dergachev/f5da514802fcbbb441a1
