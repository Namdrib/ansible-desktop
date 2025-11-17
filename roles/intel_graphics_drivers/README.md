# Intel Graphics Drivers

This role dose the setup required for installing Intel graphics drivers on a host

Aside from the package installation, this includes some extra steps lke repository setups, if relevant, and some sugar like allowing users to perform passwordless GPU monitoring

One of the requirements of this role is to be able to video transcoding

It's possible in the future there may be some dedicated "legacy" packages to support older hardware

Some useful resources:
- https://github.com/Intel-Media-SDK/MediaSDK?tab=readme-ov-file#media-sdk-support-matrix
- https://github.com/intel/media-driver/wiki
