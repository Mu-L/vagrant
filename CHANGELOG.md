## 2.4.8.dev (UNRELEASED)

FEATURES:

IMPROVEMENTS:

- core: Improve error message when no matching provider is found for a box [GH-13693]
- core: Improve error message on box add failures [GH-13687]

BUG FIXES:

- core: Fix box add action when adding a box directly from a file [GH-13699]
- provider/hyperv: Fix XML configuration parsing logic, and add additional checks for minimum amount of memory and CPU [GH-13691]
- core: Fix guest network configuration when more than one network interface is present [GH-13686]

## 2.4.7 (June 17, 2025)

BUG FIXES:

- guests/linux: Fix /etc/fstab clean up behavior [GH-13681]
- provider/docker: Fix auto generated container names [GH-13678]
- provider/hyperv: Fix import for XML based configuration [GH-13674]

## 2.4.6 (May 21, 2025)

IMPROVEMENTS:

- core: Improve error messages on box add failures [GH-13660]
- core: Only generate and attach ISO for cloud-init on first boot [GH-13666]
- host/windows: Add basic oscdimg detection on Windows [GH-13668]
- provider/hyperv: Enable cloud-init support [GH-13671]
- provider/virtualbox: Allow link-local IPv6 addresses for hostonly [GH-12653]

BUG FIXES:

- command: Remove server mode checks [GH-13657]
- core: Prevent cloud-init from regenerating and attaching ISO [GH-13666]
- provider/hyperv: Extract machine ID if collection returned [GH-13669]
- provider/hyperv: Fix import failure due to lack of resources [GH-13670]
- provider/virtualbox: Fix VirtualBox private network setup [GH-13659]

## 2.4.5 (April 23, 2025)

FEATURES:

- communicator/none: Add experimental none communicator [GH-13651]

BUG FIXES:

- core/bundler: Handle multiple versions for system specifications [GH-13652]

## 2.4.4 (April 21, 2025)

IMPROVEMENTS:

- communicator/ssh: Update connect retry behavior, make configurable [GH-13628]
- core: Better behavior outside installers [GH-13636]
- guest/amazonlinux: Support networkd based configuration [GH-13626]
- guest/arch: Update networking for recent versions [GH-13640]
- guest/rhel: Fix networking setup in recent versions [GH-13625]
- host/darwin: Remove HFS from ISO creation [GH-13561]
- provider/hyperv: Add dvd disk support [GH-13642]
- provider/hyperv: Update primary disk detection [GH-13643]
- provider/virtualbox: Add VirtioSCSI storage controller support [GH-13587]
- util/powershell: Prefer using pwsh when available [GH-13648]

BUG FIXES:

- command/box: Fix architecture constraints in outdated/updated command [GH-13601]
- command/box: Fix architecture constraint on provider matches [GH-13647]
- communicators/winrm: Catch IO::Timeout when waiting for communicator [GH-13606]
- communicators/ssh: Catch IO::Timeout when waiting for communicator [GH-13606]
- guest/alpine: Fix DHCP assigned default route behavior [GH-13633]
- provider/docker: Handle variation in error text during image removal [GH-13564]
- provider/virtualbox: Use interface name for hostonly configuration [GH-13644]
- synced_folder/smb: Remove `nofail` mount option [GH-13645]

VAGRANT-GO:

- Removed with work archived to vagrant-go branch [GH-13622]

## 2.4.3 (November 12, 2024)

IMPROVEMENTS:

- command/cloud: Support HCP authentication [GH-13540]

BUG FIXES:

- core: Relax constraint on logger dependency [GH-13532]

## 2.4.2 (November 01, 2024)

FEATURES:

- provider/virtualbox: Add support for VirtualBox 7.1 [GH-13513]

IMPROVEMENTS:

- core: Always downcase type value when getting digest for checksum calculation [GH-13471]
- core: Activate all runtime dependencies at startup [GH-13526]
- guest/debian: Fix NFS install capability to prevent hang on install [GH-13411]
- kernel_v2/config: Add warning for IPv6 address ending with :1 [GH-13362]
- provider/docker: Properly match container ID when trailing output is present [GH-13475]
- provider/docker: Support build with containerd storage [GH-13343]
- provider/virtualbox: Allow paused state when booting vm [GH-13496]
- provider/virtualbox: Handling warnings in output when detecting version [GH-13394]
- synced_folder/nfs: Output mounting entry [GH-13383]
- synced_folder/smb: Adjust ordering in mount entry output [GH-13383]

BUG FIXES:

- command/cloud: Fix provider upload [GH-13467]
- host/bsd: Use nfsd update command instead of restart [GH-13490]
- kernel_v2/config: Fix IP address check [GH-13494] 
- provider/docker: Prevent error if network configuration data is missing [GH-13337, GH-13373]
- provider/docker: Fix docker-exec commands to pass kwargs correctly [GH-13488]
- provider/docker: Fix docker to not rebuild image if it already exists [GH-13489]
- provider/virtualbox: Prevent encoding errors within error translation [GH-13525]
- provider/hyperv: Fix configure disks capability [GH-13346]
- provisioner/ansible: Fix version detection [GH-13375]
- provisioner/ansible: Support double digit versions [GH-13493]
- provisioner/salt: Fix bootstrap script URLs [GH-13517]
- synced_folder/nfs: Fix upstart detection [GH-13409]

VAGRANT-GO:

## 2.4.1 (January 19, 2024)

FEATURES:

IMPROVEMENTS:

- communicator/ssh: Support ECDSA type keys for insecure key replacement [GH-13327]
- communicator/ssh: Inspect guest for supported key types [GH-13334]
- core: Update Ruby constraint to allow Ruby 3.3 [GH-13335]
- core/bundler: Force strict dependencies for default gems [GH-13336]
- provisioner/ansible: Support pip installation for RHEL >= 8 [GH-13326]
- util/keypair: Add support for ECDSA keys [GH-13327]

BUG FIXES:

- command/plugin: Fix plugin extension installation on Windows [GH-13328]
- communicator/ssh: Fix private key writing on Windows [GH-13329]
- core: Fix Vagrant SSL helper detection on macOS [GH-13277]
- core: Fix box collection sorting [GH-#13320]
- util/platform: Fix architecture mapping for Windows [GH-13278]

VAGRANT-GO:

## 2.4.0 (October 16, 2023)

FEATURES:

- core: Add architecture support [GH-13239]

IMPROVEMENTS:

- communicator/ssh: Add key type detection on insecure key replacement [GH-13219] 
- core: Extract box files as sparse files [GH-13252]
- keys: Add ed25519 insecure private key [GH-13219]
- util/downloader: Perform best effort revocation checks on Windows [GH-13214]
- util/keypair: Add support for generating ed25519 key pairs [GH-13219]

BUG FIXES:

- core: Fix extension installation path [GH-13215]
- provider/virtualbox: Fix ipv6 static network configuration [GH-13241]

VAGRANT-GO:

- Add basic support for HCL based config [GH-13257]

## 2.3.7 (June 15, 2023)

IMPROVEMENTS:

- command/ssh: Enable deprecated key types and algorithms [GH-13179]
- core: Update user error message on failed extension installs [GH-13207]
- core: Support loading legacy providers in OpenSSL 3 [GH-13178]
- provisioner/salt: Verify bootstrap-salt download [GH-13166]

BUG FIXES:

- communicator/ssh: Remove keyboard-interactive auth method [GH-13194]
- provisioner/salt: Fix usage on Windows guests [GH-13086]

VAGRANT-GO:

- Update data layer implementation [GH-12904]
- Update dependencies [GH-13201]

## 2.3.6 (May 19, 2023)

BUG FIXES:

- command/serve: Isolate proto constants to file for auto-loading [GH-13165]
- core/util: Unlock file prior to deletion [GH-13159]
- provider/docker: Attempt using docker command for bridge ip [GH-13153]
- provider/virtualbox: Update preferred locale values for driver [GH-13160]

## 2.3.5 (May 15, 2023)

BUG FIXES:

- communicator/ssh: Use netssh builtin keep alive functionality [GH-13069]
- communicator/ssh: Update connection settings when using a password to connect ssh [GH-13052]
- core:  Add a file mutex when downloading box files [GH-13057]
- guest/arch: Support differentiating between Artix and Arch Linux [GH-13055]
- host/windows: Get state of Windows feature "Microsoft-Hyper-V-Hypervisor" [GH-11933]
- provider/docker: Ignore inactive docker containers when assigning ports [GH-13146]
- provider/docker: Sync folders before preparing nfs settings [GH-13149]
- provider/virtualbox: De-duplicate machine port forward info [GH-13056]
- provider/virtualbox:  Remove check for hyperv being enabled when verifying virtualbox is usable on windows [GH-13090]
- provider/virtualbox: Validate LANG value when possible [GH-13150]
- provider/hyperv: Check for hyper-v feature "EnhancedSessionTransportType" [GH-12280]
- provisioner/ansible: Fix installing Ansible provisioner with version and pip [GH-13054]
- synced_folders/rsync: allow rsync-auto to also ignore relative paths [GH-13066]

NOTE: Vagrant installer packages were updated to Ruby 3

## 2.3.4 (December 9, 2022)

IMPROVEMENTS:

- host/darwin: Isolate loading incompatible libraries to support EOL platforms [GH-13022]
- provider/virtualbox: Detect network type when not provided [GH-13024]

BUG FIXES:

- host/windows: Add fix for Powershell 7.3.0 [GH-13006]
- provider/virtualbox: Adjust hostnet DHCP configuration, ignore invalid devices [GH-13004]
- provisioner/ansible: Fix install package names on older debian (and derivatives) versions [GH-13017]

## 2.3.3 (November 15, 2022) 

IMPROVEMENTS:

- core: Bump net-ssh dependency to 7.0 and remove patches [GH-12979]
- synced_folders/rsync: Include ssh `extra_args` value [GH-12973]

BUG FIXES:

- command/serve: Force root level namespace for Google constant [GH-12989]
- guest/solaris: Fix insecure key authorized keys removal [GH-12740]
- provider/virtualbox: Fix `:private_network` support for VirtualBox 7 on macOS [GH-12983]
- provider/virtualbox: Prevent localization of command output [GH-12994]
- provisioner/ansible: Update setup packages in debian capability [GH-12832]

## 2.3.2 (October 18, 2022)

FEATURES:

- provider/virtualbox: Add support for VirtualBox 7.0 [GH-12947]

## 2.3.1 (September 29, 2022)

IMPROVEMENTS:

- core: Raise error if required metadata.json box fields are not present [GH-12895]
- core: Provider helpful error when box version format is invalid [GH-12911]

BUG FIXES:

- Fix flakiness when bringing up a machine that forwards ssh [GH-12909]
- communicator/ssh: Fix `private_key_path` behavior when `keys_only` is disabled [GH-12885]
- synced_folder/nfs: Update exports file creation [GH-12910]
- util/downloader: Fix user agent [GH-12925]

VAGRANT-GO:

- Support secret interactive input [GH-12876]
- Support terminal coloring [GH-12888]
- Validate if requested provider is usable and append/prepend information to errors [GH-12898]
- Raise error if required metadata.json box fields are not present [GH-12919]

## 2.3.0 (August 5, 2022)

FEATURES:

- core: Introduce vagrant-go [GH-12819]

IMPROVEMENTS:

- core: Set rsa-sha2 in kex algorithm set to enable in key exchange [GH-12584]
- core/bundler: Improve Gem spec selection when resolving [GH-12567]
- push/heroku: Display output from push [GH-12646]

BUG FIXES:

- host/darwin: Fix `NameError` for version capability [GH-12581]
- push/ftp:  Fix `VAGRANT_CWD` handling [GH-12645]
- guests/redhat: Fix NFS shares on Rocky 9 guests [GH-12813]

## 2.2.19 (November 5, 2021)

IMPROVEMENTS:

- guest/suse: Add fallback shutdown for versions without systemd [GH-12489]
- provider/virtualbox: Validate VirtualBox hostonly network range [GH-12564]

BUG FIXES

- guest/atomic: Update detection to prevent matching on non-atomic guests [GH-12575]
- guest/coreos: Fix configure network capability [GH-12575]
- guest/windows: Fix directory creation with rsync [GH-11880]
- host/windows: Properly handle spaces in path to SSH key [GH-12398]
- provisioner/chef: Update install checks [GH-12555]

## 2.2.18 (July 27, 2021)

BUG FIXES:

- core: Fix of plugin manager kwargs [GH-12452]
- providers/docker: Pass in docker command opts as a map [GH-12449]
- providers/hyperv: Fix network address detection [GH-12472]

## 2.2.17 (July 7, 2021)

FEATURES:

- guest/rocky: Add guest support for Rocky Linux [GH-12440]

IMPROVEMENTS:

- command/package: Add --info flag to package command [GH-12304]
- guest/debian: Retry network setup on debain [GH-12421]
- guest/suse: Use systemctl poweroff in the background instead of shutdown [GH-12439]
- guest/windows: Get powershell path in %WINDIR%/System32 [GH-12436]
- host/windows: Check Domain and Application Directory contexts for credentials when validating SMB creds [GH-12428]
- providers/hyper-v: Fix IP detection when multiple devices are attached [GH-12232]
- provisioner/ansible: Detects new versions of ansible-4.0.0+ [GH-12391]
- provisioner/ansible: Strip whitespace from ansible version [GH-12420]
- provisioner/salt: Always use upstream Salt bootstrap script on Windows [GH-12127]
- provisioner/salt: Use more conservative TLS settings to work on older .NET versions [GH-12413]
- provisioner/shell: Buffer output to display full lines [GH-12437]
- vagrant: Updates to support Ruby 3.0 [GH-12427]

BUG FIXES:

- command/cloud: Fix authentication middleware to prevent breaking local paths [GH-12419]
- communicator/ssh: Fix net-ssh patches for RSA signatures [GH-12415]
- core: Add box directly with authed urls [GH-12278]

## 2.2.16 (April 29, 2021)

IMPROVEMENTS:

- guest/linux: Detect in process shutdown in reboot capability [GH-12302]
- util/powershell: Support `pwsh` executable in new versions of powershell [GH-12335]

BUG FIXES:

- communicator/ssh: Properly handle authentication with RSA keys [GH-12298]
- guest/fedora: Import guest detection module [GH-12275]
- guest/linux: Fix SMB folder mount name capability call [GH-12281]
- provider/docker: Properly handle updated buildkit build output [GH-12300]

## 2.2.15 (March 30, 2021)

IMPROVEMENTS:

- command/cloud: Remove access token URL parameter by default [GH-12234]
- command/cloud: Add VAGRANT_SERVER_ACCESS_TOKEN_BY_URL to revert access token behavior [GH-12252]
- core: Bump vagrant_cloud dependency to 3.0.3 [GH-12200]
- core: Bump listen gem version and remove ruby_dep [GH-12148]
- core: Bump vagrant_cloud dependency to 3.0.4 [GH-12242]
- core/bundler: Update resolution handling when outside of installer and bundler [GH-12225]
- core/plugin: Provide friendlier error messages on install fail when possible [GH-12225]
- guest/openwrt: Add support for OpenWrt guests [GH-11791]
- guest/freebsd: FreeBSD updated ansible to py37-ansible [GH-12201]
- provider/virtualbox: Get default dhcp ip from a matching host ip [GH-12211]
- util/downloader: Prevent redirect notification for default store [GH-12235]

BUG FIXES:

- command/cloud: Automatically disable direct uploads when file is too large [GH-12250]
- core: Make shell script for loop shell agnostic [GH-12205]
- core: Raise error if downloading box metadata fails [GH-12189]
- core: Apply download options to metadata requests [GH-12177]
- core: Don't try to find "" by prefix in the machine index [GH-12188]
- core: Don't count not created machines as declined when destroying [GH-12186]
- core: Bump bcrypt_pbkdf version [GH-12216]
- core: Remove all space from checksums [GH-12168]
- core/bundler: Do not include default gems as pinned constraints [GH-12253]
- core/synced_folders: Extract os friendly mount name for vbox shared folders [GH-12184]
- guest/alpine: Check if interface exists before shutting it down [GH-12181]
- guest/nixos: Fix network config for recent NixOS releases [GH-12152]
- guest/fedora: Detect fedora using os-releases id [GH-12230]

## 2.2.14 (November 20, 2020)

IMPROVEMENTS:

- host/windows: Update filesystem type matching on WSL2 [GH-12056]
- provisioner/salt: Modernize Salt bootstrap script [GH-12135]

BUG FIXES:

- core: Track raw actions as they are applied to prevent multiple insertions [GH-12037]
- core/bundler: Update solution file resolution to support prerelease matching [GH-12054]
- guest/darwin: Mount vmware synced folders for big sur guests [GH-12053]

## 2.2.13 (November 06, 2020)

BUG FIXES:

- core/bundler: Adjust request sets properly with non-development prerelease [GH-12025]

## 2.2.12 (November 06, 2020)

BUG FIXES:

- core/bundler: Automatically enable prerelease dependency resolution [GH-12023]

NOTE: This is a fix release to resolve an immediate issue with Vagrant
      plugin functionality

## 2.2.11 (November 05, 2020)

IMPROVEMENTS:

- command/cap: Add ability to specify target [GH-11965]
- command/cloud: Add --force flag to `version release` command [GH-11912]
- command/cloud: Updates to utilize the 3.0 version of vagrant_cloud [GH-11916]
- core: Switch from unmaintained gem erubis to erubi [GH-11893]
- core: Download Vagrant boxes using auth headers [GH-11835]
- core: Remove dependency on mime gem [GH-11857]
- core: Handle Errno::EALREADY exceptions on port check [GH-12008]
- core: Fix missing hook/trigger insertion into action stack [GH-12014]
- guest/linux: Make max reboot wait duration configurable [GH-12011]
- guest/windows: Make max reboot wait duration configurable [GH-12011]
- providers/virtualbox: Fix availability check of provider [GH-11936]
- tests: Add integration tests for Docker provider [GH-11907]

BUG FIXES:

- core/synced_folders: Don't persist synced folders to fstab if guest is not reachable [GH-11900]
- core: Don't try to recover machine without a uuid [GH-11863]
- config/disks: Transform provider specific config to common form [GH-11939]
- config/vm: Override synced-folder `:nfs` option [GH-11988]
- contrib/zsh: Remove newline from beginning of completion script [GH-11963]
- guests/arch: Install smbclient when setting up arch smb [GH-11923]
- guest/linux: Check for /etc/fstab before trying to modify [GH-11897]
- guest/linux: Create an /etc/fstab if does not exist [GH-11909]
- guest/linux: Persist SMB mounts [GH-11846]
- guest/debian: Set hostname in /etc/hosts as first step to changing hostname [GH-11885]
- guest/rhel: Check for existence of network files before trying to update them [GH-11877]
- guest/suse: Don't use hostnamectl to set hostname if not available on system [GH-11996]
- tests: Remove rsync dependency from tests [GH-11889]

## 2.2.10 (August 24, 2020)

FEATURES:

- hyperv/disks: Add ability to manage virtual disks for guests [GH-11541]

IMPROVEMENTS:

- core: Allow provisioners to be run when a communicator is not available [GH-11579]
- core: Add `autocomplete` command that allows for install of bash or zsh autocomplete scripts [GH-11523]
- core: Update to childprocess gem to 4.0.0 [GH-11717]
- core: Add action to wait for cloud-init to finish running [GH-11773]
- core: Update to net-ssh to 6.0 and net-sftp to 3.0 [GH-11621]
- core: Optimize port in use check for faster validation [GH-11810]
- core: Support for Ruby 2.7 [GH-11814]
- core: Add synced folder capabilities for mount options and default fstab modification behavior [GH-11797]
- guest/arch: Use systemd-networkd to configure networking for guests [GH-11400]
- guest/haiku: Rsync install for rsync synced folders [GH-11614]
- guest/solaris11: Add guest capability shell_expand_guest_path [GH-11759]
- host/darwin: Add ability to build ISO [GH-11694]
- hosts/linux: Add ability to build ISO [GH-11750]
- hosts/windows: Add ability to build ISO [GH-11750]
- providers/hyperv: Add support for SecureBootTemplate setting on import [GH-11756]
- providers/hyperv: Add support for EnhancedSessionTransportType [GH-11014]
- virtualbox/disks: Add ability to manage virtual dvds for guests [GH-11613]

BUG FIXES:

- core: Ensure MapCommandOptions class is required [GH-11629]
- core: Fix `:all` special value on triggers [GH-11688]
- core: Ensure network addresses have a valid netmask [GH-11679]
- core: Recover local machine metadata in global index [GH-11656]
- core: Print CLI help message is ambiguous option provided [GH-11746]
- core: Update how `/etc/hosts` gets updated for darwin, freebsd and openbsd [GH-11719]
- core: Capture `[3J` escape sequence [GH-11807]
- core: Treat empty box value as invalid [GH-11618]
- core: Allow forwarding ports to unknown addresses [GH-11810]
- core: Scrub credentials as whole words [GH-11837]
- commands/destroy: Add gracefull option to switch beween gracefully or forcefully shutting down a vm [GH-11628]
- communicator/ssh: Raise an error for a nil exit status [GH-11721]
- communicator/winrm: Check for nil return from querying for forwarded ports [GH-11831]
- config/vm: Add option `allow_hosts_modification` to allow/disable Vagrant editing the guests `/etc/hosts` file [GH-11565]
- config/vm: Add config option `hostname` to `config.vm.network` [GH-11566]
- config/vm: Don't ignore NFS synced folders on Windows hosts [GH-11631]
- host: Use regular port check for loopback addresses [GH-11654]
- host: Allow windows and linux hosts to detach from rdp process [GH-11732]
- host/windows: Properly register SMB password validation capability [GH-11795]
- guests: Allow setting of hostname according to `hostname` option for multiple guests [GH-11704]
- guest/alpine: Allow setting of hostname according to `hostname` option [GH-11718]
- guest/esxi: Be more permissive with permissions of ssh directory [GH-11587]
- guest/linux: Add virtual box shared folders to guest fstab [GH-11570]
- guest/suse: Allow setting of hostname according to `hostname` option [GH-11567]
- providers/docker: Ensure new containers don't grab existing bound ports [GH-11602]
- providers/hyperv: Fix check for secure boot [GH-11809]
- providers/virtualbox: Fix inability to create disk with same name across multiple guests [GH-11767]
- provisioners/docker: Allow to specify docker image version using the `run` option [GH-11806]
- provisioners/file: Allow creating empty folders [GH-11805]
- provisioners/shell: Ensure Windows shell provisioner gets the correct file extension [GH-11644]
- util/powershell: Use correct powershell executable for privileged commands [GH-11787]

## 2.2.9 (May 07, 2020)

BUG FIXES:

- core/bundler: Properly handle plugin install with available specification [GH-11592]
- provisioners/docker: Fix CentOS docker install and start service capabilities [GH-11581]
- provisioners/podman: Seperate RHEL install from CentOS install [GH-11584]

## 2.2.8 (May 04, 2020)

FEATURES:

- virtualbox/disks: Add ability to manage virtual disks for guests [GH-11349]

IMPROVEMENTS:

- bin/vagrant: Automatically include global options within commands [GH-11473]
- bin/vagrant: Suppress Ruby warnings when not running pre-release version [GH-11446]
- communicator/ssh: Add support for configuring SSH connect timeout [GH-11533]
- core: Update childprocess gem [GH-11487]
- core: Add cli option `--no-tty` [GH-11414]
- core: Overhaul call stack modifications implementation for hooks and triggers [GH-11455]
- core/bundler: Cache plugin solution sets to speed up startup times [GH-11363]
- config/vm: Add`box_download_options` config to specify extra download options for a box [GH-11560]
- guest/alpine: Add ansible provisioner guest support [GH-11411]
- guest/linux: Update systemd? check to use sudo [GH-11398]
- guest/linux: Use systemd if available to halt and reboot system [GH-11407]
- guests/linux: Mount smb folders with `mfsymlinks` option by default [GH-11503]
- guest/redhat: Add support for SMB [GH-11463]
- guest/windows: Rescue all regular exceptions during reboot wait [GH-11428]
- providers/docker: Support catching container name when using podman [GH-11356]
- provisioners/docker: Support Centos8 [GH-11462]
- provisioners/podman: Add Podman as a provisioner [GH-11472]
- provisioners/salt: Allow specifying python_version [GH-11436]

BUG FIXES:

- communicators/winssh: Fix issues with Windows SSH communicator [GH-11430]
- core/bundler: Activate vagrant specification when not active [GH-11445]
- core/bundler: Properly resolve sets when Vagrant is in prerelease [GH-11571]
- core/downloader: Always set `-q` flag as first option [GH-11366]
- core/hooks: Update dynamic action hook implementation to prevent looping [GH-11427]
- core/synced_folders: Validate type option if set [GH-11359]
- guests/debian: Choose netplan renderer based on network configuration and installed tools [GH-11498]
- host/darwin: Quote directories in /etc/exports [GH-11441]
- host/linux: Ensure `/etc/exports` does not contain duplicate records [GH-10591]
- host/windows: Check all interfaces for port conflict when host_ip: "0.0.0.0" [GH-11454]
- providers/docker: Fix issue where Vagrant fails to remove image if it is in use [GH-11355]
- providers/docker: Fix issue with getting correct docker image id from build output [GH-11461]
- providers/hyperv: Prevent error when identity reference cannot be translated [GH-11425]
- provider/hyperv: Use service id for manipulating vm integration services [GH-11499]
- providers/virtualbox: Parse `list dhcpservers` output on VirtualBox 6.1 [GH-11404]
- providers/virtualbox: Raise an error if guest IP ends in .1 [GH-11500]
- provisioners/shell: Ensure windows shell provisioners always get an extension [GH-11517]
- util/io: Fix encoding conversion errors [GH-11571]

## 2.2.7 (January 27, 2020)

IMPROVEMENTS:

- guest/opensuse: Check for basename hostname prior to setting hostname [GH-11170]
- host/linux: Check for modinfo in /sbin if it's not on PATH [GH-11178]
- core: Show guest name in hostname error message [GH-11175]
- provisioners/shell: Linux guests now support `reboot` option [GH-11194]
- darwin/nfs: Put each NFS export on its own line [GH-11216]
- contrib/bash: Add more completion flags to up command [GH-11223]
- provider/virtualbox: Add VirtualBox provider support for version 6.1.x [GH-11250]
- box/outdated: Allow to force check for box updates and ignore cached check [GH-11231]
- guest/alpine: Update apk cache when installing rsync [GH-11220]
- provider/virtualbox: Improve error message when machine folder is inaccessible [GH-11239]
- provisioner/ansible_local: Add pip install method for arch guests [GH-11265]
- communicators/winssh: Use Windows shell for `vagrant ssh -c` [GH-11258]

BUG FIXES:

- command/snapshot/save: Fix regression that prevented snapshot of all guests in environment [GH-11152]
- core: Update UI to properly retain newlines when adding prefix [GH-11126]
- core: Check if box update is available locally [GH-11188]
- core: Ensure Vagrant::Errors are loaded in file_checksum util [GH-11183]
- cloud/publish: Improve argument handling for missing arguments to command [GH-11184]
- core: Get latest version for current provider during outdated check [GH-11192]
- linux/nfs: avoid adding extra newlines to /etc/exports [GH-11201]
- guest/darwin: Fix VMware synced folders on APFS [GH-11267]
- guest/redhat: Ensure `nfs-server` is restarted when installing nfs client [GH-11212]
- core: Do not validate checksums if options are empty string [GH-11211]
- provider/docker: Enhance docker build method to match against buildkit output [GH-11205]
- provisioner/ansible_local: Don't prompt for input when installing Ansible on Ubuntu and Debian [GH-11191]
- provisioner/ansible_local: Ensure all guest caps accept all passed in arguments [GH-11265]
- host/windows: Fix regression that prevented port collisions from being detected [GH-11244]
- core/provisioner: Set top level provisioner name if set in a provisioner config [GH-11295]

## 2.2.6 (October 14, 2019)

FEATURES:

- core/provisioners: Introduce new Provisioner options: before and after [GH-11043]
- guest/alpine: Integrate the vagrant-alpine plugin into Vagrant core [GH-10975]

IMPROVEMENTS:

- command/box/prune: Allow prompt skip while preserving actively in use boxes [GH-10908]
- command/cloud: Support providing checksum information with boxes [GH-11101]
- dev: Fixed Vagrantfile for Vagrant development [GH-11012]
- guest/alt: Improve handling for using network tools when setting hostname [GH-11000]
- guest/suse: Add ipv6 network config templates for SUSE based distributions [GH-11013]
- guest/windows: Retry on connection timeout errors for the reboot capability [GH-11093]
- host/bsd: Use host resolve path capability to modify local paths if required [GH-11108]
- host/darwin: Add host resolve path capability to provide real paths for firmlinks [GH-11108]
- provisioners/chef: Update pkg install flags for chef on FreeBSD guests [GH-11075]
- provider/hyperv: Improve error message when VMMS is not running [GH-10978]
- provider/virtualbox: Raise additional errors for incomplete virtualbox installation on usable check [GH-10938]
- util/filechecksum: Add support for more checksum types [GH-11101]

BUG FIXES:

- command/rsync-auto: Fix path watcher bug so that all subdirectories are synced when changed [GH-11089]
- command/snapshot/save: Ensure VM id is passed to list snapshots for hyper-v provider [GH-11097]
- core: Ensure proper paths are shown in config loading exceptions [GH-11056]
- guest/suse: Use hostnamectl instead of hostname to set the hostname under SUSE [GH-11100]
- provider/docker: Fix default provider validation if password is used [GH-11053]
- provider/docker: Fix Docker providers usable? check [GH-11068]
- provisioner/ansible_local: Ensure pip_install_cmd is finalized to emptry string [GH-11098]
- provisioner/file: Ensure relative path for file provisioner source is relative to guest machines cwd [GH-11099]
- provider/docker: Ensure docker build_args option is properly set in docker compose config yaml [GH-11106]
- guest/suse: Update nfs & service daemon names for suse based hosts and guests [GH-11076]
- provider/docker: Determine ip address prefix workaround for docker public networks [GH-11111]
- provider/docker: Only return interfaces where addr is not nil for networks [GH-11116]

## 2.2.5 (June 19, 2019)

FEATURES:

- providers/docker: Private and Public networking support [GH-10702]

IMPROVEMENTS:

- command/global-status: Provide machine-readable information [GH-10506]
- command/snapshot: Separate snapshot names for guests when listing snapshots [GH-10828]
- command/box/update: Ignore missing metadata files when updating all boxes [GH-10829]
- core: Use consistent settings when unpacking boxes as root [GH-10707]
- core: Write metadata.json file when packaging box [GH-10706]
- core: Remove whitespace from id file on load [GH-10727]
- core/bundler: Support resolution when installed within system [GH-10894]
- guest/coreos:  Update network configuration and hostname setting [GH-10752]
- guest/freebsd: Add proper VirtualBox share folders support for FreeBSD guests [GH-10717]
- guest/freebsd: Add unmount share folder for  VirtualBox guests [GH-10761]
- guest/freebsd: Simplify network interface listing when configuring networks [GH-10763]
- providers/docker: Add usable? check to docker provider [GH-10890]
- synced_folder/smb: Remove configuration information from synced folder data [GH-10811]

BUG FIXES:

- command/box/update: Ensure the right version is picked when updating specific boxes [GH-10810]
- command/cloud: Properly set variable from CLI argument parsing for `username` field [GH-10726]
- command/rsync_auto: Use relative paths to machines folder path for file path Listener [GH-10902]
- communicator/ssh: Remove net/sftp loading to prevent loading errors [GH-10745]
- contrib/bash: Search for running_vm_list only in `machines` folder [GH-10841]
- core/bundler: Properly parse multiple constants when installing plugins [GH-10896]
- core/environment: Support plugin configuration within box Vagrantfiles [GH-10889]
- core/triggers: Fix typo in UI output [GH-10748]
- core/triggers: Properly exit with abort option [GH-10824]
- core/triggers: Ensure guest names are string when filtering trigger configs [GH-10854]
- core/triggers: Abort after all running processes have completed when parallel is enabled [GH-10891]
- guest/void: Fix NFS capability detection [GH-10713]
- guest/bsd: Properly set BSD options order for /etc/exports [GH-10909]
- host/windows: Fix rubygems error when host has directory named `c` [GH-10803]
- provider/virtualbox: Ensure non-existent machines do not attempt to list snapshots [GH-10784]
- provider/docker: Properly set docker-compose config file with volume names [GH-10820]
- provisioner/ansible: Fix pip installer hardcoded curl get_pip.py piped to python [GH-10625]
- provisioner/chef: Update chef install check for guests [GH-10917]
- synced_folders/rsync: Remove rsync__excludes from command if array is empty [GH-10901]

## 2.2.4 (February 27, 2019)

FEATURES:

- core/triggers: Introduce new option `:type` for actions, hooks, and commands [GH-10615]

IMPROVEMENTS:

- communicator/ssh: Update `#upload` behavior to work properly with new sshd path checks [GH-10698]
- communicator/winrm: Update `#upload` behavior to match ssh communicator upload behavior [GH-10698]
- guest/windows: Add reboot output to guest capability [GH-10638]
- provisioner/file: Refactor path modification rules and allow communicator to handle details [GH-10698]

BUG FIXES:

- core: Fix format finalization of plugins in Vagrantfile [GH-10664]
- core: Fix SIGINT behavior and prevent backtrace [GH-10666]
- core: Change remaining box_client_cert refs to box_download_client_cert [GH-10622]
- core: Move over AddAuthentication middleware and hooks  out of deprecated class [GH-10686]
- guest/debian: Properly set DHCP for systemd-networkd ips [GH-10586]
- guest/solaris11: Create interface if required before configuration [GH-10595]
- installers/appimage: Use ld path with appimage libs on suffix [GH-10647]
- providers/docker: Expand paths when comparing synced folders on reload [GH-10645]
- providers/virtualbox: Fix import paths on Windows with VirtualBox 6 [GH-10629]
- synced_folders/rsync: Properly clean up tmp folder created during rsync [GH-10690]

## 2.2.3 (January 9, 2019)

FEATURES:

- host/void: Add host support for void linux [GH-10012]

IMPROVEMENTS:

- command/rsync-auto: Prevent crash on post-rsync command failure [GH-10515]
- command/snapshot: Raise error for bad subcommand [GH-10470]
- command/package: Ensure temp dir for package command is cleaned up [GH-10479]
- command/powershell: Support running elevated commands [GH-10528]
- communicator/ssh: Add `config` and `remote_user` options [GH-10496]
- core: Display version update on stderr instead of stdout [GH-10482]
- core: Add experimental feature flag [GH-10485]
- core: Show box version during box outdated check [GH-10573]
- guest/windows: Modify elevated username only on username failure [GH-10488]
- host/windows: Prevent SMB setup commands from becoming too long [GH-10489]
- host/windows: Automatically answer yes when pruning SMB shares [GH-10524]
- provisioners/file: Show source and destination locations with file provisioner [GH-10570]
- provisioners/salt: Validate that `install_type` is set if `version` is specified [GH-10474]
- provisioners/salt: Update default install version [GH-10537]
- provisioners/shell: Add `reboot` option for rebooting supported guest [GH-10532]
- synced_folders/rsync: Support using rsync `--chown` option [GH-10529]
- util/guest_inspection: Validate hostnamectl command works when detected [GH-10512]
- util/platform: Use wslpath command for customized root on WSL [GH-10574]

BUG FIXES:

- command/cloud publish: Ensure box file exists before path expanding [GH-10468]
- command/cloud publish: Catch InvalidVersion errors from vagrant_cloud client [GH-10513]
- command/snapshot: Retain consistent provisioning behavior across all commands [GH-10490]
- command/validate: Bypass install checks for validating configs with the `--ignore-provider` flag [GH-10467]
- communicator/ssh: Fix garbage output detection [GH-10571]
- guest/alt: Fix network configuration errors [GH-10527]
- guest/coreos: Fix grep command for network interface of CoreOS guest [GH-10554]
- guest/freebsd: Fix defaultrouter rcvar in static network template [GH-10469]
- guest/redhat: Fix network configuration errors [GH-10527]
- providers/virtualbox: Adjust version requirement for NIC warning [GH-10486]
- util/powershell: Use correct Base64 encoding for encoded commands [GH-10487]

## 2.2.2 (November 27, 2018)

BUG FIXES:

- providers/virtualbox: Update default_nic_type implementation and add warning [GH-10450]

## 2.2.1 (November 15, 2018)

FEATURES:

- core/plugins: Add reset! method to communicator [GH-10399]
- providers/virtualbox: Add support for VirtualBox 6.0 [GH-10379]

IMPROVEMENTS:

- command/validate: Allow validation of config while ignoring provider [GH-10351]
- communicators/ssh: Prevent overly verbose output waiting for connection [GH-10321]
- communicators/ssh: Support ed25519 keys [GH-10365]
- communicators/ssh: Add reset! implementation [GH-10399]
- communicators/winrm: Add reset! implementation [GH-10399]
- core: Limit number of automatic box update checks [GH-10359]
- host/windows: Remove PATH check in WSL detection [GH-10313]
- providers/hyperv: Disable automatic checkpoints before deletion [GH-10406]
- providers/virtualbox: Add `automount` flag if specified with synced_folder [GH-10326]
- providers/virtualbox: Refactor host only network settings [GH-7699]
- providers/virtualbox: Support setting default NIC type for network adapters [GH-10383]
- providers/virtualbox: Update ssh_port helper to handle multiple matches [GH-10409]
- provisioners/shell: Add :reset option to allow communicator reset [GH-10399]
- synced_folders/smb: Allow for 'default' smb_username in prompt if set [GH-10319]
- util/network_ip: Simplify `network_address` helper [GH-7693]
- util/platform: Prevent hard failure during hyper-v enabled check [GH-10332]

BUG FIXES:

- command/login: Only show deprecation warning when command is invoked [GH-10374]
- core: Fallback to Vagrantfile defined box information [GH-10368]
- core/bundler: Update source ordering to properly resolve with new RubyGems [GH-10364]
- core/triggers: Only split inline script if host is non-Windows [GH-10405]
- communicator/winrm: Prepend computer name to username when running elevated commands [GH-10387]
- guest/debian: Fix halting issue when setting hostname by restarting networking on guest [GH-10301, GH-10330]
- guest/linux: Fix vagrant user access to docker after install [GH-10399]
- guest/windows: Add reboot capability to fix hostname race condition [GH-10347]
- guest/windows: Allow for reading key paths with spaces [GH-10389]
- host/windows: Fix powershell to properly handle paths with spaces [GH-10390]
- providers/docker: Deterministic host VM synced folder location for Docker VM [GH-10311]
- providers/hyperv: Fix network vlan configuration script [GH-10366]
- providers/hyperv: Properly output error message on failed guest import [GH-10404]
- providers/hyperv: Fix typo in network configuration detection script [GH-10410]

## 2.2.0 (October 16, 2018)

FEATURES:

- command/cloud: Introduce `vagrant cloud` subcommand to Vagrant [GH-10148]
- command/upload: Add command for uploading files to guest [GH-10263]
- command/winrm: Add command for executing guest commands via WinRM [GH-10263]
- command/winrm-config: Add command for providing WinRM configuration [GH-10263]

IMPROVEMENTS:

- core: Ensure file paths are identical when checking for cwd [GH-10220]
- core: Add config option `ignore_box_vagrantfile` for ignoring vagrantfile inside box [GH-10242]
- core/triggers: Add abort option to core triggers [GH-10232]
- core/triggers: Introduce `ruby` option for trigger [GH-10267]
- contrib/bash: Add completion for snapshot names for vagrant snapshot restore|delete [GH-9054]
- providers/docker: Build docker from git repo [GH-10221]
- providers/hyperv: Update Hyper-V admin check and allow override via ENV variable [GH-10275]
- providers/virtualbox: Allow base_mac to be optional [GH-10255]
- provisioners/salt: bootstrap-salt.sh: use -s with curl [GH-9432]
- provisioners/salt: remove leading space with bootstrap_options [GH-9431]

BUG FIXES:

- core/environment: Provide rgloader for local plugin installations [GH-10279]
- contrib/sudoers/osx: Fix missing comma and add remove export alias [GH-10235]
- guest/redhat: Update restart logic in redhat change_host_name cap [GH-10223]
- guest/windows: Allow special characters in SMB password field [GH-10219]
- providers/hyperv: Only use AutomaticCheckpointsEnabled when available [GH-10264]
- providers/hyperv: Only use CheckpointType when available [GH-10265]
- provisioners/ansible: Fix remote directory creation [GH-10259, GH-10258]
- provisioners/puppet: Properly set env variables for puppet provisioner on windows [GH-10218]
- provisioners/salt: Properly set salt pillar variables for windows guests [GH-10215]
- synced_folders/rsync: Ensure unique tmp dirs for ControlPath with rsync [GH-10291]

## 2.1.5 (September 12, 2018)

IMPROVEMENTS:

- core: Add `Vagrant.version?` helper method [GH-10191]
- core: Scrub sensitive values from logger output [GH-10200]
- core: Prevent multiple evaluations of Vagrantfile [GH-10199]
- command/init: Support VAGRANT_DEFAULT_TEMPLATE env var [GH-10171]
- command/powershell: Improve doc help string and fix winrm locales error [GH-10189]
- contrib/bash: autocomplete running VM names for destroy subcommand [GH-10168]
- guest/debian: Use `sudo` to determine if systemd is in use for hardened systems [GH-10198]
- guest/openbsd: Add IPv6 network template for OpenBSD machines [GH-8912]
- provisioners/salt: Allow non-windows hosts to pass along version [GH-10194]

BUG FIXES:

- core: Fix Vagrant.has_plugin? behavior before plugins are initialized [GH-10165]
- core: Check verify_host_key for falsey or :never values when generating ssh config [GH-10182]
- guest/linux: Filter out empty strings and loopback interfaces when constructing list of network interfaces [GH-10092]
- provider/hyper-v: Check for automatic checkpoint support before configuring [GH-10181]

## 2.1.4 (August 30, 2018)

BUG FIXES:

- core: Fix local plugin installation prompt answer parsing [GH-10154]
- core: Reset internal environment after plugin loading [GH-10155]
- host/windows: Fix SMB list parsing when extra fields are included [GH-10156]
- provisioners/ansible_local: Fix umask setting permission bug [GH-10140]

## 2.1.3 (August 29, 2018)

FEATURES:

- core: Support for project specific plugins [GH-10037]

IMPROVEMENTS:

- command/reload: Add `--force` flag to reload command [GH-10123]
- communicator/winrm: Display warning if vagrant-winrm plugin is detected [GH-10076]
- contrib/bash: Replace -VAGRANTSLASH- with literal slash in completion [GH-9987]
- core: Show installed version of Vagrant when displaying version check [GH-9968]
- core: Retain information of original box backing active guest [GH-10083]
- core: Only write box info if provider supports box objects [GH-10126]
- core: Update net-ssh dependency constraint to ~> 5.0.0 [GH-10066]
- core/triggers: Catch and allow for non-standard exit codes with triggers `run` options [GH-10005]
- core/triggers: Allow for spaces in `path` for trigger run option [GH-10118]
- guest/debian: Isolate network interface configuration to individual files for systemd [GH-9889]
- guest/redhat: Use libnfs-utils package if available [GH-9878]
- provider/docker: Support Docker volume consistency for synced folders [GH-9811]
- provider/hyperv: Disable synced folders on non-DrvFs file systems by default [GH-10001]
- util/downloader: Support custom suffix on user agent string [GH-9966]
- util/downloader: Prevent false positive matches on Location header [GH-10041]
- util/subprocess: Force system library paths for executables external to AppImage [GH-10078]

BUG FIXES:

- core: Disable Vagrantfile loading with plugin commands [GH-10030]
- core: Ensure the SecureRandom library is loaded for the trigger class [GH-10063]
- core/triggers: Allow trigger run args option to be a single string [GH-10116]
- util/powershell: Properly `join` commands from passed in array [GH-10115]
- guest/solaris: Add back guest detection check for Solaris derived guests [GH-10081]
- guest/windows: Be more explicit when invoking cmd.exe with mount_volume script [GH-9976]
- host/linux: Fix sudo usage in NFS capability when modifying exports file [GH-10084]
- host/windows: Remove localization dependency from SMB list generation [GH-10043]
- provider/docker: Convert windows paths for volume mounts on docker driver [GH-10100]
- provider/hyperv: Fix checkpoint configuration and properly disable automatic checkpoints by default [GH-9999]
- provider/hyperv: Remove localization dependency from access check [GH-10000]
- provider/hyperv: Enable ExposeVirtualizationExtensions only when available [GH-10079]
- provider/virtualbox: Skip link-local when fixing IPv6 route [GH-9639, GH-10077]
- push/ftp: Custom error when attempting to push too many files [GH-9952]
- util/downloader: Prevent errors when Location header contains relative path [GH-10017]
- util/guest_inspection: Prevent nmcli check from hanging when pty is enabled [GH-9926]
- util/platform: Always force string type conversion on path [GH-9998]

## 2.1.2 (June 26, 2018)

IMPROVEMENTS:

- commands/suspend: Introduce flag for suspending all machines [GH-9829]
- commands/global-status: Improve message about removing stale entries [GH-9856]
- provider/hyperv: Attempt to determine import failure cause [GH-9936]
- provider/hyperv: Update implementation. Include support for modifications on reload [GH-9872]
- provider/hyperv: Validate maxmemory configuration setting [GH-9932]
- provider/hyperv: Enable provider within WSL [GH-9943]
- provider/hyperv: Add Hyper-V accessibility check on data directory path [GH-9944]
- provisioners/ansible_local: Improve installation from PPA on Ubuntu guests.
    The compatibility is maintained only for active long-term support (LTS) versions,
    i.e. Ubuntu 12.04 (Precise Pangolin) is no longer supported. [GH-9879]

BUG FIXES:

- communicator/ssh: Update ssh private key file permission handling on Windows [GH-9923, GH-9900]
- core: Display plugin commands in help [GH-9808]
- core: Ensure guestpath or name is set with synced_folder option and dont set guestpath if not provided [GH-9692]
- guest/debian: Fix netplan generation when using DHCP [GH-9855]
- guest/debain: Update priority of network configuration file when using networkd [GH-9867]
- guest/ubuntu: Update netplan config generation to detect NetworkManager [GH-9824]
- guest/ubuntu: Fix failing Ansible installation from PPA on Bionic Beaver (18.04 LTS) [GH-9796]
- host/windows: Prevent processing of last SMB line when using net share [GH-9917]
- provisioner/chef: Prevent node_name set on configuration with chef_apply [GH-9916]
- provisioner/salt: Remove usage of masterless? config attribute [GH-9833]

## 2.1.1 (May 7, 2018)

IMPROVEMENTS:

- guest/linux: Support builtin vboxsf module for shared folders [GH-9800]
- host/windows: Update SMB capability to work without Get-SmbShare cmdlet [GH-9785]

BUG FIXES:

- core/triggers: Initialize internal trigger object for machine before initializing provider [GH-9784]
- core/triggers: Ensure internal trigger fire does not get called if plugin installed [GH-9799]
- provider/hyperv: Call import script with switchid instead of switchname [GH-9781]

## 2.1.0 (May 3, 2018)

FEATURES:

- core: Integrate vagrant-triggers plugin functionality into core Vagrant [GH-9713]

IMPROVEMENTS:

- core: Improve messaging around not finding requested provider [GH-9735]
- core: Disable exception reports by default [GH-9738]
- core: Continue on if vagrant fails to parse metadata box for update [GH-9760]
- hosts/linux: Support RDP capability within WSL [GH-9758]
- hosts/windows: Add SMB default mount options capability and set default version to 2.0 [GH-9734]
- provider/hyperv: Include neighbor check for MAC on guest IP detection [GH-9737]
- provider/virtualbox: Do not require VirtualBox availability within WSL [GH-9759]
- provisioner/chef_zero: Support arrays for data_bags_path [GH-9669]
- util/downloader: Don't raise error if response is HTTP 416 [GH-9729]
- util/platform: Update Hyper-V enabled check [GH-9746]

BUG FIXES:

- communicators/ssh: Log error and proceed on Windows private key permissions [GH-9769]
- middleware/authentication: Prevent URL modification when no changes are required [GH-9730]
- middleware/authentication: Ignore URLs which cannot be parsed [GH-9739]
- provider/hyperv: Reference switches by ID instead of name [GH-9747]
- provider/docker: Use Util::SafeExec if docker-exec is run with `-t` option [GH-9761]
- provisioner/chef: Trim drive letter from path on Windows [GH-9766]
- provisioner/puppet: Properly finalize structured_facts config option [GH-9720]
- util/platform: Fix original WSL to Windows path for "root" directory [GH-9696]

## 2.0.4 (April 20, 2018)

FEATURES:

- core: Vagrant aliases [GH-9504]

IMPROVEMENTS:

- communicators/ssh: Update file permissions when generating new key pairs [GH-9676]
- core: Make resolv-replace usage opt-in instead of opt-out [GH-9644]
- core: Suppress error messages from checkpoint runs [GH-9645]
- guests/coreos: Identify operating systems closely related to CoreOS [GH-9600]
- guests/debian: Adjust network configuration file prefix to 50- [GH-9646]
- guests/photon: Less specific string grep to fix PhotonOS 2.0 detection [GH-9528]
- guests/windows: Fix slow timeout when updating windows hostname [GH-9578]
- hosts/windows: Make powershell version detection timeout configurable [GH-9506]
- providers/virtualbox: Improve network collision error message [GH-9685]
- provisioner/chef_solo: Improve Windows drive letter removal hack for remote paths[GH-9490]
- provisioner/chef_zero: File path expand all chef_zero config path options [GH-9690]
- provisioner/puppet: Puppet structured facts toyaml on provisioner [GH-9670]
- provisioner/salt: Add master_json_config & minion_json_config options [GH-9420]
- util/platform: Warn on ArgumentError exceptions from encoding [GH-9506]

BUG FIXES:

- commands/package: Fix uninitialized constant error [GH-9654]
- communicators/winrm: Fix command filter to properly parse commands [GH-9673]
- hosts/windows: Properly respect the VAGRANT_PREFER_SYSTEM_BIN environment variable [GH-9503]
- hosts/windows: Fix virtualbox shared folders path for windows guests [GH-8099]
- guests/freebsd: Fix typo in command that manages configuring networks [GH-9705]
- util/checkpoint_client: Respect VAGRANT_CHECKPOINT_DISABLE environment variable [GH-9659]
- util/platform: Use `--version` instead of `version` for WSL validation [GH-9674]

## 2.0.3 (March 15, 2018)

IMPROVEMENTS:

  - guests/solaris: More explicit Solaris 11 and inherit SmartOS from Solaris [GH-9398]
  - hosts/windows: Add support for latest WSL release [GH-9525, GH-9300]
  - plugins/login: Update middleware to re-map hosts and warn on custom server [GH-9499]
  - providers/hyper-v: Exit if Hyper-V is enabled and VirtualBox provider is used [GH-9456]
  - provisioners/salt: Change to a temporary directory before downloading script files [GH-9351]
  - sycned_folders/nfs: Default udp to false when using version 4 [GH-8828]
  - util/downloader: Notify on host redirect [GH-9344]

BUG FIXES:

  - core: Use provider override when specifying box_version [GH-9502]
  - guests/debian: Renew DHCP lease on hostname change [GH-9405]
  - guests/debian: Point hostname to 127.0.1.1 in /etc/hosts [GH-9404]
  - guests/debian: Update systemd? check for guest inspection [GH-9459]
  - guests/debian: Use ip route in dhcp template [GH-8730]
  - guests/gentoo: Disable if/netplugd when setting up a static ip on a gentoo guest using openrc [GH-9261]
  - guests/openbsd: Atomically apply new hostname.if(5) [GH-9265]
  - hosts/windows: Fix halt problem when determining powershell version on old powershells [GH-9470]
  - hosts/windows: Convert to windows path if on WSL during vbox export [GH-9518]
  - providers/virtualbox: Fix hostonly matching not respecting :name argument [GH-9302]
  - util/credential_scrubber: Ignore empty strings [GH-9472, GH-9462]

## 2.0.2 (January 29, 2018)

FEATURES:

  - core: Provide mechanism for removing sensitive data from output [GH-9276]
  - core: Relax Ruby constraints to include 2.5 [GH-9363]
  - core: Hide sensitive values in output [GH-9369]
  - command/init: Support custom Vagrantfile templates [GH-9202]
  - guests: Add support for the Haiku operating system [GH-7805, GH-9245]
  - synced_folders/smb: Add support for macOS hosts [GH-9294]
  - vagrant-spec: Update vagrant-spec to include Windows platforms and updated linux boxes [GH-9183]

IMPROVEMENTS:

  - config/ssh: Deprecate :paranoid in favor of :verify_host_key [GH-9341]
  - core: Add optional timestamp prefix on log output [GH-9269]
  - core: Print more helpful error message for NameEror exceptions in Vagrantfiles [GH-9252]
  - core: Update checkpoint implementation to announce updates and support notifications [GH-9380]
  - core: Use Ruby's Resolv by default [GH-9394]
  - docs: Include virtualbox 5.2.x as supported in docs [GH-9237]
  - docs: Improve how to pipe debug log on powershell [GH-9330]
  - guests/amazon: Improve guest detection [GH-9307]
  - guests/debian: Update guest configure networks [GH-9338]
  - guests/dragonflybsd: Base guest on FreeBSD to inherit more functionality [GH-9205]
  - guests/linux: Improve NFS service name detection and interactions [GH-9274]
  - guests/linux: Support mount option overrides for SMB mounts [GH-9366]
  - guests/linux: Use `ip` for reading guest address if available [GH-9315]
  - guests/solaris: Improve guest detection for alternatives [GH-9295]
  - hosts/windows: Check credentials during SMB prepare [GH-9365]
  - providers/hyper-v: Ensure Hyper-V cmdlets are fully qualified [GH-8863]
  - middleware/authentication: Add app.vagrantup.com to allowed hosts [GH-9145]
  - provisioners/shell: Support hiding environment variable values in output [GH-9367]
  - providers/virtualbox: Add a clean error message for invalid IP addresses [GH-9275]
  - providers/virtualbox: Introduce flag for SharedFoldersEnableSymlinksCreate setting [GH-9354]
  - providers/virtualbox: Provide warning for SharedFoldersEnableSymlinksCreate setting [GH-9389]
  - provisioners/salt: Fixes timeout issue in salt bootstrapping for windows [GH-8992]
  - synced_folders/smb: Update Windows implementation [GH-9294]
  - util/ssh: Attempt to locate local ssh client before attempting installer provided [GH-9400]

BUG FIXES:

  - commands/box: Show all box providers with `update outdated --global` [GH-9347]
  - commands/destroy: Exit 0 if vagrant destroy finds no running vms [GH-9251]
  - commands/package: Fix --output path with specified folder [GH-9131]
  - guests/suse: Do not use full name when setting hostname [GH-9212]
  - providers/hyper-v: Fix enable virtualization extensions on import [GH-9255]
  - provisioners/ansible(both): Fix broken 'ask_sudo_pass' option [GH-9173]

## 2.0.1 (November 2, 2017)

FEATURES:

  - core: Introduce Ruby 2.4 to Vagrant [GH-9102]
  - providers/virtualbox: Virtualbox 5.2 support [GH-8955]

IMPROVEMENTS:

  - command/destroy: Introduce parallel destroy for certain providers [GH-9127]
  - communicators/winrm: Include APIPA check within ready check [GH-8997]
  - core: Clear POSIXLY_CORRECT when using optparse [GH-8685]
  - docs: Add auto_start_action and auto_stop_action to docs. [GH-9029]
  - docs: Fix typo in box format doc [GH-9100]
  - provisioners/chef: Handle chef provisioner reboot request [GH-8874]
  - providers/salt: Support Windows Salt Minions greater than 2016.x.x [GH-8926]
  - provisioners/salt: Add wget to bootstrap_salt options when fetching installer file [GH-9112]
  - provisioners/shell: Use ui.detail for displaying output [GH-8983]
  - util/downloader: Use CURL_CA_BUNDLE environment variable [GH-9135]

BUG FIXES:

  - communicators/ssh: Retry on Errno::EPIPE exceptions [GH-9065]
  - core: Rescue more exceptions when checking if port is open [GH-8517]
  - guests/solaris11: Inherit from Solaris guest and keep solaris11 specific methods [GH-9034]
  - guests/windows: Split out cygwin path helper for msys2/cygwin paths and ensure cygpath exists [GH-8972]
  - guests/windows: Specify expected shell when executing on guest (fixes einssh communicator usage) [GH-9012]
  - guests/windows: Include WinSSH Communicator when using insert_public_key [GH-9105]
  - hosts/windows: Check for vagrant.exe when validating versions within WSL [GH-9107, GH-8962]
  - providers/docker: Isolate windows check within executor to handle running through VM [GH-8921]
  - providers/hyper-v: Properly invoke Auto stop action [GH-9000]
  - provisioners/puppet: Fix winssh communicator support in puppet provisioner [GH-9014]
  - virtualbox/synced_folders: Allow synced folders to contain spaces in the guest path [GH-8995]

## 2.0.0 (September 7, 2017)

IMPROVEMENTS:

  - commands/login: Add support for two-factor authentication [GH-8935]
  - commands/ssh-config: Properly display windows path if invoked from msys2 or
      cygwin [GH-8915]
  - guests/alt: Add support for ALT Linux [GH-8746]
  - guests/kali: Fix file permissions on guest plugin ruby files [GH-8950]
  - hosts/linux: Provide common systemd detection for services interaction, fix NFS
      host interactions [GH-8938]
  - providers/salt: Remove duplicate stdout, stderr output from salt [GH-8767]
  - providers/salt: Introduce salt_call_args and salt_args option for salt provisioner
      [GH-8927]
  - providers/virtualbox: Improving resilience of some VirtualBox commands [GH-8951]
  - provisioners/ansible(both): Add the compatibility_mode option, with auto-detection
      enabled by default [GH-8913, GH-6570]
  - provisioners/ansible: Add the version option to the host-based provisioner
      [GH-8913, GH-8914]
  - provisioners/ansible(both): Add the become and become_user options with deprecation
      of sudo and sudo_user options [GH-8913, GH-6570]
  - provisioners/ansible: Add the ask_become_pass option with deprecation of the
      ask_sudo_pass option [GH-8913, GH-6570]

BUG FIXES:

  - guests/shell_expand_guest_path : Properly expand guest paths that include relative
      path alias [GH-8918]
  - hosts/linux: Remove duplicate export folders before writing /etc/exports [GH-8945]
  - provisioners/ansible(both): Add single quotes to the inventory host variables, only
      when necessary [GH-8597]
  - provisioners/ansible(both): Add the "all:vars" section to the inventory when defined
      in `groups` option [GH-7730]
  - provisioners/ansible_local: Extra variables are no longer truncated when a dollar ($)
      character is present [GH-7735]
  - provisioners/file: Align file provisioner functionality on all platforms [GH-8939]
  - util/ssh: Properly quote key path for IdentityFile option to allow for spaces [GH-8924]

BREAKING CHANGES:

  - Both Ansible provisioners are now capable of automatically setting the compatibility_mode that
      best fits with the Ansible version in use. You may encounter some compatibility issues when
      upgrading. If you were using Ansible 2.x and referring to the _ssh-prefixed variables present
      in the generated inventory (e.g. `ansible_ssh_host`). In this case, you can fix your Vagrant
      setup by setting compatibility_mode = "1.8", or by migrating to the new variable names (e.g.
      ansible_host).

## 1.9.8 (August 23, 2017)

IMPROVEMENTS:

  - bash: Add box prune to contrib bash completion [GH-8806]
  - commands/login: Ask for description of Vagrant Cloud token [GH-8876]
  - commands/validate: Improve functionality of the validate command [GH-8889]n
  - core: Updated Vagrants rspec gem to 3.5.0 [GH-8850]
  - core: Validate powershell availability and version before use [GH-8839]
  - core: Introduce extra_args setting for ssh configs [GH-8895]
  - docs: Align contrib/sudoers file for ubuntu linux with docs [GH-8842]
  - provider/hyperv: Prefer IPv4 guest address [GH-8831, GH-8759]
  - provisioners/chef: Add config option omnibus_url for chef provisioners [GH-8682]
  - provisioners/chef: Improve exception handling around missing folder paths [GH-8775]

BUG FIXES:

  - box/update: Add force flag for box upgrade command [GH-8871]
  - commands/rsync-auto: Ensure relative dirs are still rsync'd if defined [GH-8781]
  - commands/up: Disable install providers when using global id on vagrant up [GH-8910]
  - communicators/winssh: Fix public key insertion to retain ACL [GH-8790]
  - core: Update util/ssh to use `-o` for identity files [GH-8786]
  - guests/freebsd: Fix regex for listing network devices on some FreeBSD boxes. [GH-8760]
  - hosts/windows: Prevent control characters in version check for WSL [GH-8902, GH-8901]
  - providers/docker: Split String type links into Array when using compose [GH-8837, GH-8821]
  - providers/docker: Expand relative volume paths correctly [GH-8838, GH-8822]
  - providers/docker: Error when compose option enabled with force_host_vm [GH-8911]
  - provisioners/ansible: Update to use `-o` for identity files [GH-8786]
  - provisioners/file: Ensure remote folder exists prior to scp file or folder [GH-8880]
  - provisioners/salt: Fix error case when github is unreachable for installer [GH-8864]
  - provisioners/shell: Allow frozen string scripts [GH-8875]
  - provisioners/puppet: Remove `--manifestdir` flag from puppet apply in provisioner [GH-8797]
  - synced_folders/rsync: Correctly format IPv6 host [GH-8840, GH-8809]

## 1.9.7 (July 7, 2017)

FEATURES:

  - core: Add support for preferred providers [GH-8558]

IMPROVEMENTS:

  - guests/bsd: Invoke `tee` with explicit path [GH-8740]
  - guests/smartos: Guest updates for host name and nfs capabilities [GH-8695]
  - guests/windows: Add public key capabilities for WinSSH communicator [GH-8761]
  - hosts/windows: Log command exec encoding failures and use original string on failure [GH-8820]
  - providers/virtualbox: Filter machine IPs when preparing NFS settings [GH-8819]

BUG FIXES:

  - communicators/winssh: Make script upload directory configurable [GH-8761]
  - core: Update cygwin detection to prevent PATH related errors [GH-8749, GH-6788]
  - core: Fix URI parsing of box names to prevent errors [GH-8762, GH-8758]
  - provider/docker: Only rsync-auto current working dir with docker provider [GH-8756]

## 1.9.6 (June 28, 2017)

IMPROVEMENTS:

  - commands/snapshot: Enforce unique snapshot names and introduce `--force` flag [GH-7810]
  - commands/ssh: Introduce tty flag for `vagrant ssh -c` [GH-6827]
  - core: Warn about vagrant CWD changes for a machine [GH-3921]
  - core: Allow Compression and DSAAuthentication ssh flags to be configurable [GH-8693]
  - core/box: Warn if user sets box as url [GH-7118]
  - core/bundler: Enforce stict constraints on vendored libraries [GH-8692]
  - guests/kali: Add support for guest [GH-8553]
  - guests/smartos: Update halt capability and add public key insert and remove capabilities [GH-8618]
  - provisioners/ansible: Fix SSH keys only behavior to be consistent with Vagrant [GH-8467]
  - providers/docker: Add post install provisioner for docker setup [GH-8722]
  - snapshot/delete: Improve error message when given snapshot doesn't exist [GH-8653]
  - snapshot/list: Raise exception if provider does not support snapshots [GH-8619]
  - snapshot/restore: Improve error message when given snapshot doesn't exist [GH-8653]
  - snapshot/save: Raise exception if provider does not support snapshots [GH-8619]

BUG FIXES:

  - communicators/ssh: Move `none` cipher to end of default cipher list in Net::SSH [GH-8661]
  - core: Add unique identifier to provisioner objects [GH-8680]
  - core: Stop config loader from loading dupe config if home and project dir are equal [GH-8707]
  - core/bundler: Impose constraints on update and allow system plugins to properly update [GH-8729]
  - guests/linux: Strip whitespace from GID [GH-8666, GH-8664]
  - guests/solaris: Do not use UNC style path for shared folders from windows hosts [GH-7723]
  - guests/windows: Fix directory creation when using rsync for synced folders [GH-8588]
  - hosts/windows: Force common encoding when running system commands [GH-8725]
  - providers/docker: Fix check for docker-compose [GH-8659, GH-8660]
  - providers/docker: Fix SSH under docker provider [GH-8706]
  - providers/hyperv: Fix box import [GH-8678, GH-8677]
  - provisioners/ansible_local: Catch pip_args in FreeBSD's and SUSE's ansible_install [GH-8676]
  - provisioners/salt: Fix minion ID configuration [GH-7865, GH-7454]
  - snapshot/restore: Exit 1 if vm has not been created when command is invoked [GH-8653]

## 1.9.5 (May 15, 2017)

FEATURES:

  - hosts/windows: Support running within WSL [GH-8570, GH-8582]

IMPROVEMENTS:

  - communicators/ssh: Retry on aborted connections [GH-8526, GH-8520]
  - communicators/winssh: Enabling shared folders and networking setup [GH-8567]
  - core: Remove nokogiri dependency and constraint [GH-8571]
  - guests: Do not modify existing /etc/hosts content [GH-8506, GH-7794]
  - guests/redhat: Update network configuration capability to properly handle NM [GH-8531]
  - hosts/windows: Check for elevated shell for Hyper-V [GH-8548, GH-8510]
  - hosts/windows: Fix invalid share names on Windows guests from Windows hosts [GH-8433]
  - providers: Return errors from docker/hyperv on ssh when not available [GH-8565, GH-8508]
  - providers/docker: Add support for driving provider with docker-compose [GH-8576]

BUG FIXES:

  - guests/debian: Fix use_dhcp_assigned_default_route [GH-8577, GH-8575]
  - provisioners/shell: Fix Windows batch file provisioning [GH-8539, GH-8535]
  - providers/docker: Fall back to old style for SSH info lookup [GH-8566, GH-8552]
  - providers/hyperv: Fix import script [GH-8529]
  - providers/hyperv: Use string comparison for conditional checks in import scripts [GH-8568, GH-8444]

## 1.9.4 (April 24, 2017)

FEATURES:

  - command/validate: Add Vagrantfile validation command [GH-8264, GH-8151]
  - communicators/winssh: Add WinSSH communicator for Win32-OpenSSH [GH-8485]
  - provider/hyperv: Support integration services configuration [GH-8379, GH-8378]

IMPROVEMENTS:

  - core: Update internal dependencies [GH-8329, GH-8456]
  - core/bundler: Warn when plugin require fails instead of generating hard failure [GH-8400, GH-8392]
  - core/bundler: Error when configured plugin sources are unavailable [GH-8442]
  - guests/elementary: Add support for new guest "Elementary OS" [GH-8472]
  - guests/esxi: Add public_key capability [GH-8310]
  - guests/freebsd: Add chef_install and chef_installed? capabilities [GH-8443]
  - guests/gentoo: Add support for systemd in network configuration [GH-8407, GH-8406]
  - guests/windows: Support mounting synced folders via SSH on windows [GH-7425, GH-6220]
  - hosts/windows: Improve user permission detection [GH-7797]
  - provider/docker: Improve IP and port detection [GH-7840, GH-7651]
  - provider/docker: Do not force docker host VM on Darwin or Windows [GH-8437, GH-7895]
  - provisioners/ansible_local: Add `pip_args` option to define additional parameters when installing Ansible via pip [GH-8170, GH-8405]
  - provisioners/ansible_local: Add `:pip_args_only` install mode to allow full custom pip installations [GH-8405]
  - provisioners/salt: Update minion version installed to 2016.11.3 [GH-8448]

BUG FIXES:

  - command/box: Remove extraneous sort from box list prior to display [GH-8422]
  - command/box: Properly handle local paths with spaces for box add [GH-8503, GH-6825]
  - command/up: Prevent other provider installation when explicitly defined [GH-8393, GH-8389]
  - communicators/ssh: Do not yield empty output data [GH-8495, GH-8259]
  - core: Provide fallback and retry when 0.0.0.0 is unavailable during port check [GH-8399, GH-8395]
  - core: Support port checker methods that do not expect inclusion of host_ip [GH-8497, GH-8423]
  - core/bundler: Check if source is local path and prevent addition to remote sources [GH-8401]
  - core/ui: Prevent deadlock detection errors [GH-8414, GH-8125]
  - guests/debian: Remove hardcoded device name in interface template [GH-8336, GH-7960]
  - guests/linux: Fix SMB mount capability [GH-8410, GH-8404]
  - hosts/windows: Fix issues with Windows encoding [GH-8385, GH-8380, GH-8212, GH-8207, GH-7516]
  - hosts/windows: Fix UNC path generation when UNC path is provided [GH-8504]
  - provisioners/salt: Allow Salt version to match 2 digit month [GH-8428]
  - provisioners/shell: Properly handle remote paths on Windows that include spaces [GH-8498, GH-7234]

## 1.9.3 (March 21, 2017)

IMPROVEMENTS:

  - command/plugin: Remove requirement for paths with no spaces [GH-7967]
  - core: Support host_ip for forwarded ports [GH-7035, GH-8350]
  - core: Include disk space hint in box install failure message [GH-8089]
  - core/bundler: Allow vagrant constraint matching in prerelease mode [GH-8341]
  - provisioner/docker: Include /bin/docker as valid path [GH-8390]
  - provider/hyperv: Support enabling Hyper-V nested virtualization [GH-8325, GH-7738]

BUG FIXES:

  - communicator/winrm: Prevent inaccurate WinRM address [GH-7983, GH-8073]
  - contrib/bash: Handle path spaces in bash completion [GH-8337]
  - core: Fix box sorting on find and list [GH-7956, GH-8334]
  - core/bundler: Force path as preferred source on install [GH-8327]
  - core/provision: Update "never" behavior to match documentation [GH-8366, GH-8016]
  - plugins/push: Isolate deprecation to Atlas strategy only
  - plugins/synced_folders: Give UID/GID precedence if found within mount options
      [GH-8122, GH-8064, GH-7859]

## 1.9.2 (February 27, 2017)

FEATURES:

  - providers/hyperv: Support packaging of Hyper-V boxes [GH-7867]
  - util/command_deprecation: Add utility module for command deprecation [GH-8300]
  - util/subprocess: Add #stop and #running? methods [GH-8270]

IMPROVEMENTS:

  - commands/expunge: Display default value on prompt and validate input [GH-8192, GH-8171]
  - communicator/winrm: Refactor WinRM communicator to use latest WinRM
      gems and V2 API [GH-8102]
  - core: Scrub URL credentials from output when adding boxes [GH-8194, GH-8117]
  - providers/hyperv: Prefer VMCX over XML configuration when VMCX is supported [GH-8119]

BUG FIXES:

  - command/init: Include box version when using minimal option [GH-8283, GH-8282]
  - command/package: Fix SecureRandom constant error [GH-8159]
  - communicator/ssh: Remove any STDERR output prior to command execution [GH-8291, GH-8288]
  - core/bundler: Prevent pristine warning messages [GH-8191, GH-8190, GH-8147]
  - core/bundler: Fix local installations of pre-release plugins [GH-8252, GH-8253]
  - core/bundler: Prefer user defined source when installing plugins [GH-8273, GH-8210]
  - core/environment: Prevent persisting original environment variable if name is empty
      [GH-8198, GH-8126]
  - core/environment: Fix gems_path location [GH-8248]
  - core/environment: Properly expand dotfile path [GH-8196, GH-8108]
  - guests/arch: Fix configuring multiple network interfaces [GH-8165]
  - guests/linux: Fix guest detection for names with spaces [GH-8092]
  - guests/redhat: Fix network interface configuration [GH-8148]

DEPRECATIONS:

  - command/push: Disable push command [GH-8300]

## 1.9.1 (December 7, 2016)

IMPROVEMENTS:

  - core: Disable Vagrantfile loading when running plugin commands [GH-8066]
  - guests/redhat: Detect and restart NetworkManager service if in use [GH-8052, GH-7994]

BUG FIXES:

  - core: Detect load failures within install solution sets and retry [GH-8068]
  - core: Prevent interactive shell on plugin uninstall [GH-8086, GH-8087]
  - core: Remove bundler usage from Util::Env [GH-8090, GH-8094]
  - guests/linux: Prevent stderr output on init version check for synced folders [GH-8051]

## 1.9.0 (November 28, 2016)

FEATURES:

  - commands/box: Add `prune` subcommand for removing outdated boxes [GH-7978]
  - core: Remove Bundler integration for handling internal plugins [GH-7793, GH-8000, GH-8011, GH-8031]
  - providers/hyperv: Add support for Hyper-V binary configuration format
      [GH-7854, GH-7706, GH-6102]
  - provisioners/shell: Support MD5/SHA1 checksum validation of remote scripts [GH-7985, GH-6323]

IMPROVEMENTS:

  - commands/plugin: Retain name sorted output when listing plugins [GH-8028]
  - communicator/ssh: Support custom environment variable export template
      [GH-7976, GH-6747]
  - provisioners/ansible(both): Add `config_file` option to point the location of an
      `ansible.cfg` file via ANSIBLE_CONFIG environment variable [GH-7195, GH-7918]
  - synced_folders: Support custom naming and disable auto-mount [GH-7980, GH-6836]

BUG FIXES:

  - guests/linux: Do not match interfaces with special characters when sorting [GH-7989, GH-7988]
  - provisioner/salt: Fix Hash construction for constant [GH-7986, GH-7981]

## 1.8.7 (November 4, 2016)

IMPROVEMENTS:

  - guests/linux: Place ethernet devices at start of network devices list [GH-7848]
  - guests/linux: Provide more consistent guest detection [GH-7887, GH-7827]
  - guests/openbsd: Validate guest rsync installation success [GH-7929, GH-7898]
  - guests/redhat: Include Virtuozzo Linux 7 within flavor identification [GH-7818]
  - guests/windows: Allow vagrant to start Windows Nano without provisioning [GH-7831]
  - provisioners/ansible_local: Change the Ansible binary detection mechanism [GH-7536]
  - provisioners/ansible(both): Add the `playbook_command` option [GH-7881]
  - provisioners/puppet: Support custom environment variables [GH-7931, GH-7252, GH-2270]
  - util/safe_exec: Use subprocess for safe_exec on Windows [GH-7802]
  - util/subprocess: Allow closing STDIN [GH-7778]

BUG FIXES:

  - communicators/winrm: Prevent connection leakage [GH-7712]
  - core: Prevent duplicate provider priorities [GH-7756]
  - core: Allow Numeric type for box version [GH-7874, GH-6960]
  - core: Provide friendly error when user environment is too large [GH-7889, GH-7857]
  - guests: Remove `set -e` usage for better shell compatibility [GH-7921, GH-7739]
  - guests/linux: Fix incorrectly configured private network [GH-7844, GH-7848]
  - guests/linux: Properly order network interfaces
      [GH-7866, GH-7876, GH-7858, GH-7876]
  - guests/linux: Only emit upstart event if initctl is available [GH-7813]
  - guests/netbsd: Fix rsync installation [GH-7922, GH-7901]
  - guests/photon: Fix networking setup [GH-7808, GH-7873]
  - guests/redhat: Properly configure network and restart service [GH-7751]
  - guests/redhat: Prevent NetworkManager from managing devices on initial start [GH-7926]
  - hosts/linux: Fix race condition in writing /etc/exports file for NFS configuration
      [GH-7947, GH-7938] - Thanks to Aron Griffis (@agriffis) for identifying this issue
  - plugins/rsync: Escape exclude paths [GH-7928, GH-7910]
  - providers/docker: Remove --interactive flag when pty is true [GH-7688]
  - provisioners/ansible_local: Use enquoted path for file/directory existence checks
  - provisioners/salt: Synchronize configuration defaults with documentation [GH-7907, GH-6624]
  - pushes/atlas: Fix atlas push on Windows platform [GH-6938, GH-7802]

## 1.8.6 (September 27, 2016)

IMPROVEMENTS:

  - Add detection for DragonFly BSD [GH-7701]
  - Implement auto_start and auto_stop actions for Hyper-V [GH-7647]
  - communicators/ssh: Remove any content prepended to STDOUT [GH-7676, GH-7613]

BUG FIXES:

  - commands/package: Provide machine data directory for base box package
      [GH-5070, GH-7725]
  - core: Fix windows path formatting [GH-6598]
  - core: Fixes for ssh-agent interactions [GH-7703, GH-7621, GH-7398]
  - core: Support VAGRANT_DOTFILE_PATH relative to the Vagrantfile [GH-7623]
  - guests: Prevent ssh disconnect errors on halt command [GH-7675]
  - guests/bsd: Remove Darwin matching [GH-7701]
  - guests/linux: Fix SSH key permissions [GH-7610, GH-7611]
  - guests/linux: Always sort discovered network interfaces [GH-7705, GH-7668]
  - guests/linux: Fixes for user and group ID lookups for virtualbox shared folders
      [GH-7616, GH-7662, GH-7720]
  - guests/openbsd: Add custom halt capability [GH-7701]
  - guests/ubuntu: Fix detection on older guests [GH-7632, GH-7524, GH-7625]
  - hosts/arch: Detect NFS server by service name on arch [GH-7630, GH-7629]
  - hosts/darwin: Fix generated RDP configuration file [GH-7698]
  - provisioners/ansible: Add support for `ssh.proxy_command` setting [GH-7752]
  - synced_folders/nfs: Display warning when configured for NFSv4 and UDP [GH-7740]
  - synced_folders/rsync: Properly ignore excluded files within synced directory
      from `chown` command. [GH-5256, GH-7726]

## 1.8.5 (July 18, 2016)

FEATURES:

  - core: Provide a way to globally disable box update checks with the
      environment variable `VAGRANT_BOX_UPDATE_CHECK_DISABLE`. Setting this
      to any non-empty value will instruct Vagrant to not look for box updates
      when running `vagrant up`. Setting this environment variable has no
      effect on the `vagrant box` commands.

IMPROVEMENTS:

  - guests/arch: Support installing synced folder clients [GH-7519]
  - guests/darwin: Allow ipv6 static networks [GH-7491]
  - providers/virtualbox: Add support for 5.1 [GH-7574]

BUG FIXES:

  - core: Bump listen gem and Ruby version to improve rsync performance
      [GH-7453, GH-7441]
  - core: Check process stdout when detecting if a hyperv admin
      [GH-7465, GH-7467]
  - core: Ensure removal of temporary directory when box download fails
      [GH-7496, GH-7499]
  - core: Fix regression for installing plugins from path [GH-7505, GH-7493]
  - core: Skip checking conflicts on disabled ports [GH-7587]
  - core: Idempotent write-out for state file [GH-7550]
  - core/guests: Create common BSD guest for shared logic
  - core/guests: Ignore empty output from `/sbin/ip`
      [GH-7539, GH-7537, GH-7533, GH-7605]
  - synced_folders/nfs: Shellescape rsync paths
      [GH-7540, GH-7605]
  - synced_folders/nfs: Ensure retries take place [GH-6360, GH-7605]
  - synced_folders/rsync: Shellescape rsync paths
      [GH-7580, GH-6690, GH-7579, GH-7605]
  - synced_folders/rsync: Translate Windows paths
      [GH-7012, GH-6702, GH-6568, GH-7046]
  - guests/bsd: Consolidate core logic for mounting NFS folders
      [GH-7480, GH-7474, GH-7466]
  - guests/bsd: Consolidate core logic for public key management [GH-7481]
  - guests/bsd: Consolidate core logic for halting [GH-7484]
  - guests/centos: Use `ip` instead of `ifconfig` to detect network interfaces
      [GH-7460]
  - guests/debian: Ensure newline when inserting public key [GH-7456]
  - guests/linux: Ensure NFS retries during mounting [GH-7492]
  - guests/redhat: Use `/sbin/ip` to list and configure networks for
      compatability with older versions of CentOS [GH-7482]
  - guests/redhat: Ensure newline when inserting public key [GH-7598, GH-7605]
  - guests/ubuntu: Use /etc/os-release to detect [GH-7524]
  - guests/ubuntu: Use short hostname [GH-7488, GH-7605]
  - providers/hyperv: Fix version check and catch statement [GH-7447, GH-7487]

## 1.8.4 (June 13, 2016)

BUG FIXES:

  - core: Fix bundler plugin issue and version constraint [GH-7418, GH-7415]
  - providers/virtualbox: Use 8 network interfaces (due to Windows limitation)
      [GH-7417, GH-7419]
  - provisioners/ansible(both): Honor "galaxy_roles_path" option when running
      ansible-playbook [GH-7269, GH-7420]
  - provisioners/ansible_local: Add quotes around "ansible-galaxy" arguments
      [GH-7420]

IMPROVEMENTS:

  - guests/redhat: Add CloudLinux detection [GH-7428, GH-7427]

## 1.8.3 (June 10, 2016)

BREAKING CHANGES:

  - The `winrm` communicator now shares the same upload behavior as the `ssh`
      communicator. This change should have no impact to most vagrant operations
      but may break behavior when uploading directories to an existing
      destination target. The `file` provisioner should be the only builtin
      provisioner affected by this change. When uploading a directory and the
      destination directory exists on the endpoint, the source base directory
      will be created below the destination directory on the endpoint and the
      source directory contents will be unzipped to that location. Prior to this
      release, the contents of the source directory would be unzipped to an
      existing destination directory without creating the source base directory.
      This new behavior is more consistent with SCP and other well known shell copy commands.
  - The Chef provisioner's `channel` default value has changed from "current" to
      "stable". The "current" channel includes nightly releases and should be
      opt-in only. Note that users wishing to download the Chef Development Kit
      will need to opt into the "current" channel until Chef Software promotes
      into the "stable" channel.
  - The Arch Linux host capability for NFS removed support for rc.d in favor or
      systemd which has been present since 2012. Please see GH-7181 for more
      information.

FEATURES:

  - provider/docker: Allow non-linux users to opt-out of the host VM to run
      Docker containers by setting `config.force_host_vm = false` in the
      Vagrantfile. This is especially useful for customers who wish to use
      the beta builds for Mac and Windows, dlite, or a custom provider.
      [GH-7277, GH-7298, 8c11b53]
  - provider/docker: New command: `docker-exec` allows attaching to an
      already-running container.
      [GH-7377, GH-6566, GH-5193, GH-4904, GH-4057, GH-4179, GH-4903]

IMPROVEMENTS:

  - core/downloader: increase box resume download limit to 24h
      [GH-7352, GH-7272]
  - core/package: run validations prior to packaging [GH-7353, GH-7351]
  - core/action: make `start` ("vagrant up") run provisioners [GH-4467, GH-4421]
  - commands/all: Make it clear that machine IDs can be specified
      [GH-7356, GH-7228]
  - commands/init: Add support for specifying the box version [GH-7363, GH-5004]
  - commands/login: Print a warning with both the environment variable and
      local login token are present [GH-7206, GH-7219]
  - communicators/winrm: Upgrade to latest WinRM gems [GH-6922]
  - provisioners/ansible_local: Allow to install Ansible from pip,
      with version selection capability [GH-6654, GH-7167]
  - provisioners/ansible_local: Use `provisioning_path` as working directory
      for `ansible-galaxy` execution
  - provisioners/ansible(both provisioners): Add basic config
      validators/converters on `raw_arguments` and `raw_ssh_args` options
      [GH-7103]
  - provisioners/chef: Add the ability to install on SUSE [GH-6806]
  - provisioners/chef: Support legacy solo mode [GH-7327]
  - provisioners/docker: Restart container if newer image is available
      [GH-7358, GH-6620]
  - hosts/arch: Remove sysvinit and assume systemd [GH-7181]
  - hosts/linux: Do not use a pager with systemctl commands [GH-7270]
  - hosts/darwin: Add `extra_args` support for RDP [GH-5523, GH-6602]
  - hosts/windows: Use SafeExec to capture history in Powershell [GH-6749]
  - guests/amazon: Add detection [GH-7395, GH-7254]
  - guests/freebsd: Add quotes around hostname [GH-6867]
  - guests/fedora: Add support for ipv6 static networks [GH-7275, GH-7276]
  - guests/tinycore: Add support for shared folders [GH-6977, GH-6968]
  - guests/trisquel: Add initial support [GH-6842, GH-6843]
  - guests/windows: Add support for automatic login (no password prompting)
      [GH-5670]
  - core: Add `--no-delete` and provisioning flags to snapshot restore/pop
      [GH-6879]
  - providers/docker: Allow TCP and UDP ports on the same number [GH-7365,
      GH-5527]
  - providers/hyperv: Add support for differencing disk [GH-7090]
  - providers/hyperv: Add support for snapshots [GH-7110]
  - providers/hyperv: Reinstate compatibility with PS 4 [GH-7108]
  - providers/virtualbox: Add linked clone support for Virtualbox 1.4 [GH-7050]
  - synced_folders/nfs: Read static and dynamic IPs [GH-7290, GH-7289]

BUG FIXES:

  - core: Bump nokogiri version to fix windows bug [GH-6766, GH-6848]
  - core: Revert a change made to the output of the identify file [GH-6962,
      GH-6929, GH-6589]
  - core: Fix login command behind a proxy [GH-6898, GH-6899]
  - core: Fix support for regular expressions on multi-machine `up`
      [GH-6908, GH-6909]
  - core: Allow boxes to use pre-release versions [GH-6892, GH-6893]
  - core: Rescue `Errno:ENOTCONN` waiting for port to be open [GH-7182, GH-7184]
  - core: Properly authenticate metadata box URLs [GH-6776, GH-7158]
  - core: Do not run provisioners if already run on resume [GH-7059, GH-6787]
  - core: Implement better tracking of tempfiles and tmpdirs to identify file
      leaks [GH-7355]
  - core: Allow SSH forwarding on Windows [GH-7287, GH-7202]
  - core: Allow customizing `keys_only` SSH option [GH-7360, GH-4275]
  - core: Allow customizing `paranoid` SSH option [GH-7360, GH-4275]
  - command/box_update: Do not update the same box twice [GH-6042, GH-7379]
  - command/init: Remove unnecessary `sudo` from generated Vagrantfile
      [GH-7369, GH-7295]
  - docs & core: Be consistent about the "2" in the Vagrantfile version
      [GH-6961, GH-6963]
  - guests/all: Refactor guest capabilities to run in a single command -
      **please see GH-7393 for the complete list of changes!**
  - guests/arch: Restart network after configuration [GH-7120, GH-7119]
  - guests/debian: Do not return an error if ifdown fails [GH-7159,
      GH-7155, GH-6871]
  - guests/freebsd: Use `pkg` to install rsync [GH-6760]
  - guests/freebsd: Use `netif` to configure networks [GH-5852, GH-7093]
  - guests/coreos: Detect all interface names [GH-6608, GH-6610]
  - providers/hyperv: Only specify Hyper-V if the parameter is support
      [GH-7101, GH-7098]
  - providers/virtualbox: Set maximum network adapters to 36 [GH-7293, GH-7286]
  - providers/virtualbox: Do not fail when master VM from linked clone is
      missing [GH-7126, GH-6742]
  - providers/virtualbox: Use scoped overrides in preparing NFS
      [GH-7387, GH-7386]
  - provisioners/ansible: Fix a race condition in the concurrent generations of
      the ansible inventory file, while running `vagrant up --parallel`
      [GH-6526, GH-7190]
  - provisioners/ansible_local: Don't quote the Ansible arguments defined in the
      `raw_arguments` option [GH-7103]
  - provisioners/ansible_local: Format json `extra_vars` with double quotes
      [GH-6726, GH-7103]
  - provisioners/ansible_local: Fix errors in absolute paths to playbook or
      galaxy resources when running on a Windows host [GH-6740, GH-6757]
  - provisioners/ansible_local: Change the way to verify `ansible-galaxy`
      presence, to avoid a non-zero status code with Ansible 2.0 [GH-6793]
  - provisioners/ansible(both provisioners): The Ansible configuration files
      detection is only executed by the `provision` action [GH-6763, GH-6984]
  - provisioners/chef: Do not use double sudo when installing
      [GGH-6805, GH-6804]
  - provisioners/chef: Change the default channel to "stable" (previously it
      was "current") [GH-7001, GH-6979]
  - provisioners/chef: Default node_name to hostname if present
      [GH-7063, GH-7153]
  - provisioners/docker: Fix -no-trunc command option [GH-7085]
  - provisioners/docker: Allow provisioning when container name is specified
      [GH-7074, GH-7086]
  - provisioners/puppet: Use `where.exe` to locate puppet binary
      [GH-6912, GH-6876]
  - provisioners/salt: Move masterless config to apply to all platforms
      [GH-7207, Gh-6924, GH-6915]
  - pushes/ftp: Create parent directories when uploading [GH-7154, GH-6316]
  - synced_folders/smb: Do not interpolate configuration file [GH-6906]

## 1.8.1 (December 21, 2015)

BUG FIXES:

  - core: Don't create ".bundle" directory in pwd [GH-6717]
  - core: Fix exception on installing VirtualBox [GH-6713]
  - core: Do not convert standalone drive letters such as "D:" to
      UNC paths [GH-6598]
  - core: Fix a crash in parsing the config in some cases with network
      configurations [GH-6730]
  - core: Clean up temporarily files created by bundler
    [GH-7354, GH-6301, GH-3469, GH-6231]
  - commands/up: Smarter logic about what provider to install, avoiding
      situations where VirtualBox was installed over the correct provider [GH-6731]
  - guests/debian: Fix Docker install [GH-6722]
  - provisioners/chef: convert chef version to a string before comparing for
    the command builder [GH-6709, GH-6711]
  - provisioners/shell: convert env var values to strings [GH-6714]

## 1.8.0 (December 21, 2015)

FEATURES:

  - **New Command: `vagrant powershell`**: For machines that support it,
    this will open a PowerShell prompt.
  - **New Command: `vagrant port`**: For machines that support it, this will
    display the list of forwarded ports from the guest to the host.
  - **Linked Clones**: VirtualBox and VMware providers now support
    linked clones for very fast (millisecond) imports on up. [GH-4484]
  - **Snapshots**: The `vagrant snapshot` command can be used to checkpoint
    and restore point-in-time snapshots.
  - **IPv6 Private Networks**: Private networking now supports IPv6. This
    only works with VirtualBox and VMware at this point. [GH-6342]
  - New provisioner: `ansible_local` to execute Ansible from the guest
    machine. [GH-2103]

BREAKING CHANGES:

  - The `ansible` provisioner now can override the effective ansible remote user
    (i.e. `ansible_ssh_user` setting) to always correspond to the vagrant ssh
    username. This change is enabled by default, but we expect this to affect
    only a tiny number of people as it corresponds to the common usage.
    If you however use multiple remote usernames in your Ansible plays, tasks,
    or custom inventories, you can simply set the option `force_remote_user` to
    false to make Vagrant behave the same as before.
  - provisioners/salt: the "config_dir" option has been removed. It has no
      effect in Vagrant 1.8. [GH-6073]

IMPROVEMENTS:

  - core: allow removal of all box versions with `--all` flag [GH-3462]
  - core: prune entries from global status on non-existent cwd [GH-6535]
  - core: networking: allow specifying a DHCP IP [GH-6325]
  - core: run provisioner cleanup tasks before powering off the VM [GH-6553]
  - core: only run provisioner cleanup tasks if they're implemented [GH-6603]
      This improves UX, but wasn't a bug before.
  - command/plugin: Add `--plugin-clean-sources` flag to reset plugin install
      sources, primarily for corp firewalls. [GH-4738]
  - command/rsync-auto: SSH connection is cached for faster sync times [GH-6399]
  - command/up: provisioners are run on suspend resume [GH-5815]
  - communicators/ssh: allow specifying host environment variables to forward
    to guests [GH-4132, GH-6562]
  - communicators/winrm: Configurable execution time limit [GH-6213]
  - providers/virtualbox: cache version lookup, which caused significant
      slowdown on some Windows hosts [GH-6552]
  - providers/virtualbox: add `public_address` capability for virtualbox
    [GH-6583, GH-5978]
  - provisioners/chef: perform cleanup tasks on the guest instead of the host
  - provisioners/chef: automatically generate a node_name if one was not given
    [GH-6555]
  - provisioners/chef: install Chef automatically on Windows [GH-6557]
  - provisioners/chef: allow the user to specify the Chef product (such as
    the Chef Development Kit) [GH-6557]
  - provisioners/chef: allow data_bags_path to be an array [GH-5988, GH-6561]
  - provisioners/shell: Support interactive mode for elevated PowerShell
      scripts [GH-6185]
  - provisioners/shell: add `env` option [GH-6588, GH-6516]
  - provisioners/ansible+ansible_local: add support for ansible-galaxy [GH-2718]
  - provisioners/ansible+ansible_local: add support for group and host variables
      in the generated inventory [GH-6619]
  - provisioners/ansible+ansible_local: add support for alphanumeric patterns
      for groups in the generated inventory [GH-3539]
  - provisioners/ansible: add support for WinRM settings [GH-5086]
  - provisioners/ansible: add new `force_remote_user` option to control whether
    `ansible_ssh_user` parameter should be applied or not [GH-6348]
  - provisioners/ansible: show a warning when running from a Windows Host [GH-5292]
  - pushes/local-exec: add support for specifying script args [GH-6661, GH-6660]
  - guests/slackware: add support for networking [GH-6514]

BUG FIXES:

  - core: Ctrl-C weirdness fixed where it would exit parent process
      before Vagrant finished cleaning up [GH-6085]
  - core: DHCP network configurations don't warn on IP addresses ending
      in ".1" [GH-6150]
  - core: only append `access_token` when it does not exist in the URL
    [GH-6395, GH-6534]
  - core: use the correct private key when packaging a box [GH-6406]
  - core: fix crash when using invalid box checksum type [GH-6327]
  - core: don't check for metadata if the download URL is not HTTP [GH-6540]
  - core: don't make custom dotfile path if there is no Vagrantfile [GH-6542]
  - core: more robust check for admin privs on Windows [GH-5616]
  - core: properly detect when HTTP server doesn't support byte ranges and
      retry from scratch [GH-4479]
  - core: line numbers show properly in Vagrantfile syntax errors
      on Windows [GH-6445]
  - core: catch errors setting env vars on Windows [GH-6017]
  - core: remove cached synced folders when they're removed from the
      Vagrantfile [GH-6567]
  - core: use case-insensitive comparison for box checksum validations
    [GH-6648, GH-6650]
  - commands/box: add command with `~` paths on Windows works [GH-5747]
  - commands/box: the update command supports CA settings [GH-4473]
  - commands/box: removing all versions and providers of a box will properly
      clean all directories in `~/.vagrant.d/boxes` [GH-3570]
  - commands/box: outdated global won't halt on metadata download failure [GH-6453]
  - commands/login: respect environment variables in `vagrant login` command
    [GH-6590, GH-6422]
  - commands/package: when re-packaging a packaged box, preserve the
      generated SSH key [GH-5780]
  - commands/plugin: retry plugin install automatically a few times to
      avoid network issues [GH-6097]
  - commands/rdp: prefer `xfreerdp` if it is available on Linux [GH-6475]
  - commands/up: the `--provision-with` flag works with provisioner names [GH-5981]
  - communicator/ssh: fix potential crash case with PTY [GH-6225]
  - communicator/ssh: escape IdentityFile path [GH-6428, GH-6589]
  - communicator/winrm: respect `boot_timeout` setting [GH-6229]
  - communicator/winrm: execute scheduled tasks immediately on Windows XP
      since elevation isn't required [GH-6195]
  - communicator/winrm: Decouple default port forwarding rules for "winrm" and
      "winrm-ssl" [GH-6581]
  - communicator/winrm: Hide progress bars from PowerShell v5 [GH-6309]
  - guests/arch: enable network device after setting it up [GH-5737]
  - guests/darwin: advanced networking works with more NICs [GH-6386]
  - guests/debian: graceful shutdown works properly with newer releases [GH-5986]
  - guests/fedora: Preserve `localhost` entry when changing hostname [GH-6203]
  - guests/fedora: Use dnf if it is available [GH-6288]
  - guests/linux: when replacing a public SSH key, use POSIX-compliant
      sed flags [GH-6565]
  - guests/suse: DHCP network interfaces properly configured [GH-6502]
  - hosts/slackware: Better detection of NFS [GH-6367]
  - providers/hyper-v: support generation 2 VMs [GH-6372]
  - providers/hyper-v: support VMs with more than one NIC [GH-4346]
  - providers/hyper-v: check if user is in the Hyper-V admin group if
      they're not a Windows admin [GH-6662]
  - providers/virtualbox: ignore "Unknown" status bridge interfaces [GH-6061]
  - providers/virtualbox: only fix ipv6 interfaces that are in use
      [GH-6586, GH-6552]
  - provisioners/ansible: use quotes for the `ansible_ssh_private_key_file`
    value in the generated inventory [GH-6209]
  - provisioners/ansible: use quotes when passing the private key files via
      OpenSSH `-i` command line arguments [GH-6671]
  - provisioners/ansible: don't show the `ansible-playbook` command when verbose
    option is an empty string
  - provisioners/chef: fix `nodes_path` for Chef Zero [GH-6025, GH-6049]
  - provisioners/chef: do not error when the `node_name` is unset
    [GH-6005, GH-6064, GH-6541]
  - provisioners/chef: only force the formatter on Chef 11 or higher
    [GH-6278, GH-6556]
  - provisioners/chef: require `nodes_path` to be set for Chef Zero
    [GH-6110, GH-6559]
  - provisioners/puppet: apply provisioner uses correct default manifests
    with environments. [GH-5987]
  - provisioners/puppet: remove broken backticks [GH-6404]
  - provisioners/puppet: find Puppet binary properly on Windows [GH-6259]
  - provisioners/puppet-server: works with Puppet Collection 1 [GH-6389]
  - provisioners/salt: call correct executables on Windows [GH-5999]
  - provisioners/salt: log level and colorize works for masterless [GH-6474]
  - push/local-exec: use subprocess on windows when fork does not exist
    [GH-5307, GH-6563]
  - push/heroku: use current branch [GH-6554]
  - synced\_folders/rsync: on Windows, replace all paths with Cygwin
      paths since all rsync implementations require this [GH-6160]
  - synced\_folders/smb: use credentials files to allow for more characters
      in password [GH-4230]

PLUGIN AUTHOR CHANGES:

  - installer: Upgrade to Ruby 2.2.3

## 1.7.4 (July 17, 2015)

BUG FIXES:

  - communicators/winrm: catch timeout errors [GH-5971]
  - communicators/ssh: use the same SSH args for `vagrant ssh` with and without
    a command [GH-4986, GH-5928]
  - guests/fedora: networks can be configured without nmcli [GH-5931]
  - guests/fedora: biosdevname can return 4 or 127 [GH-6139]
  - guests/redhat: systemd detection should happen on guest [GH-5948]
  - guests/ubuntu: setting hostname fixed in 12.04 [GH-5937]
  - hosts/linux: NFS can be configured without `$TMP` set on the host [GH-5954]
  - hosts/linux: NFS will sudo copying back to `/etc/exports` [GH-5957]
  - providers/docker: Add `pull` setting, default to false [GH-5932]
  - providers/virtualbox: remove UNC path conversion on Windows since it
      caused mounting regressions [GH-5933]
  - provisioners/puppet: Windows Puppet 4 paths work correctly [GH-5967]
  - provisioners/puppet: Fix config merging errors [GH-5958]
  - provisioners/salt: fix "dummy config" error on bootstrap [GH-5936]

## 1.7.3 (July 10, 2015)

FEATURES:

  - **New guest: `atomic`* - Project Atomic is supported as a guest
  - providers/virtualbox: add support for 5.0 [GH-5647]

IMPROVEMENTS:

  - core: add password authentication to rdp_info hash [GH-4726]
  - core: improve error message when packaging fails [GH-5399]
  - core: improve message when adding a box from a file path [GH-5395]
  - core: add support for network gateways [GH-5721]
  - core: allow redirecting stdout and stderr in the UI [GH-5433]
  - core: update version of winrm-fs to 0.2.0 [GH-5738]
  - core: add option to enabled trusted http(s) redirects [GH-4422]
  - core: capture additional information such as line numbers during
    Vagrantfile loading [GH-4711, GH-5769]
  - core: add .color? to UI objects to see if they support color [GH-5771]
  - core: ignore hidden directories when searching for boxes [GH-5748, GH-5785]
  - core: use `config.ssh.sudo_command` to customize the sudo command
      format [GH-5573]
  - core: add `Vagrant.original_env` for Vagrant and plugins to restore or
      inspect the original environment when Vagrant is being run from the
      installer [GH-5910]
  - guests/darwin: support inserting generated key [GH-5204]
  - guests/darwin: support mounting SMB shares [GH-5750]
  - guests/fedora: support Fedora 21 [GH-5277]
  - guests/fedora: add capabilities for nfs and flavor [GH-5770, GH-4847]
  - guests/linux: specify user's domain as separate parameter [GH-3620, GH-5512]
  - guests/redhat: support Scientific Linux 7 [GH-5303]
  - guests/photon: initial support [GH-5612]
  - guests/solaris,solaris11: support inserting generated key [GH-5182]
      [GH-5290]
  - providers/docker: images are pulled prior to starting [GH-5249]
  - provisioners/ansible: store the first ssh private key in the auto-generated inventory [GH-5765]
  - provisioners/chef: add capability for checking if Chef is installed on Windows [GH-5669]
  - provisioners/docker: restart containers if arguments have changed [GH-3055, GH-5924]
  - provisioners/puppet: add support for Puppet 4 and configuration options [GH-5601]
  - provisioners/puppet: add support for `synced_folder_args` in apply [GH-5359]
  - provisioners/salt: add configurable `config_dir` [GH-3138]
  - provisioners/salt: add support for masterless configuration [GH-3235]
  - provisioners/salt: provider path to missing file in errors [GH-5637]
  - provisioners/salt: add ability to run salt orchestrations [GH-4371]
  - provisioners/salt: update to 2015.5.2 [GH-4152, GH-5437]
  - provisioners/salt: support specifying version to install [GH-5892]
  - provisioners/shell: add :name attribute to shell provisioner [GH-5607]
  - providers/docker: supports file downloads with the file provisioner [GH-5651]
  - providers/docker: support named Dockerfile [GH-5480]
  - providers/docker: don't remove image on reload so that build cache can
      be used fully [GH-5905]
  - providers/hyperv: select a Hyper-V switch based on a `network_name` [GH-5207]
  - providers/hyperv: allow configuring VladID [GH-5539]
  - providers/virtualbox: regexp supported for bridge configuration [GH-5320]
  - providers/virtualbox: handle a list of bridged NICs [GH-5691]
  - synced_folders/rsync: allow showing rsync output in debug mode [GH-4867]
  - synced_folders/rsync: set `rsync__rsync_path` to specify the remote
      command used to execute rsync [GH-3966]

BUG FIXES:

  - core: push configurations are validated with global configs [GH-5130]
  - core: remove executable permissions on internal file [GH-5220]
  - core: check name and version in `has_plugin?` [GH-5218]
  - core: do not create duplicates when defining two private network addresses [GH-5325]
  - core: update ssh to check for Plink [GH-5604]
  - core: do not report plugins as installed when plugins are disabled [GH-5698, GH-5430]
  - core: Only take files when packaging a box to avoid duplicates [GH-5658, GH-5657]
  - core: escape curl urls and authentication [GH-5677]
  - core: fix crash if a value is missing for CLI arguments [GH-5550]
  - core: retry SSH key generation for transient RSA errors [GH-5056]
  - core: `ssh.private_key_path` will override the insecure key [GH-5632]
  - core: restore the original environment when shelling out to subprocesses
      outside of the installer [GH-5912]
  - core/cli: fix box checksum validation [GH-4665, GH-5221]
  - core/windows: allow Windows UNC paths to allow more than 256
      characters [GH-4815]
  - command/rsync-auto: don't crash if rsync command fails [GH-4991]
  - communicators/winrm: improve error handling significantly and improve
      the error messages shown to be more human-friendly. [GH-4943]
  - communicators/winrm: remove plaintext passwords from files after
      provisioner is complete [GH-5818]
  - hosts/nfs: allow colons (`:`) in NFS IDs [GH-5222]
  - guests/darwin: remove dots from LocalHostName [GH-5558]
  - guests/debian: Halt works properly on Debian 8. [GH-5369]
  - guests/fedora: recognize future fedora releases [GH-5730]
  - guests/fedora: reload iface connection by NetworkManager [GH-5709]
  - guests/fedora: do not use biosdevname if it is not installed [GH-5707]
  - guests/freebsd: provide an argument to the backup file [GH-5516, GH-5517]
  - guests/funtoo: fix incorrect path in configure networks [GH-4812]
  - guests/linux: fix edge case exception where no home directory
      is available on guest [GH-5846]
  - guests/linux: copy NFS exports to tmpdir to do edits to guarantee
      permissions are available [GH-5773]
  - guests/openbsd: output newline after inserted public key [GH-5881]
  - guests/tinycore: fix change hostname functionality [GH-5623]
  - guests/ubuntu: use `hostnamectl` to set hostname on Ubuntu Vivid [GH-5753]
  - guests/windows: Create rsync folder prior to rsync-ing. [GH-5282]
  - guests/windows: Changing hostname requires reboot again since
      the non-reboot code path was crashing Windows server. [GH-5261]
  - guests/windows: ignore virtual NICs [GH-5478]
  - hosts/windows: More accurately get host IP address in VPNs. [GH-5349]
  - plugins/login: allow users to login with a token [GH-5145]
  - providers/docker: Build image from `/var/lib/docker` for more disk
      space on some systems. [GH-5302]
  - providers/docker: Fix crash that could occur in some scenarios when
      the host VM path changed.
  - providers/docker: Fix crash that could occur on container destroy
      with VirtualBox shared folders [GH-5143]
  - providers/hyperv: allow users to configure memory, cpu count, and vmname [GH-5183]
  - providers/hyperv: import respects secure boot. [GH-5209]
  - providers/hyperv: only set EFI secure boot for gen 2 machines [GH-5538]
  - providers/virtualbox: read netmask from dhcpservers [GH-5233]
  - providers/virtualbox: Fix exception when VirtualBox version is empty. [GH-5308]
  - providers/virtualbox: Fix exception when VBoxManage.exe can't be run
      on Windows [GH-1483]
  - providers/virtualbox: Error if another user is running after a VM is
      created to avoid issue with VirtualBox "losing" the VM [GH-5895]
  - providers/virtualbox: The "name" setting on private networks will
      choose an existing hostonly network [GH-5389]
  - provisioners/ansible: fix SSH settings to support more than 5 ssh keys [GH-5017]
  - provisioners/ansible: increase ansible connection timeout to 30 seconds [GH-5018]
  - provisioners/ansible: disable color if Vagrant is not colored [GH-5531, GH-5532]
  - provisioners/ansible: only show ansible-playbook command when `verbose` option is enabled [GH-5803]
  - provisioners/ansible: fix a race condition in the inventory file generation [GH-5551]
  - provisioners/docker: use `service` to restart Docker instead of upstart [GH-5245, GH-5577]
  - provisioners/docker: Only add docker user to group if exists. [GH-5315]
  - provisioners/docker: Use https for repo [GH-5749]
  - provisioners/docker: `apt-get update` before installing linux kernel
      images to get the correct version [GH-5860]
  - provisioners/chef: Fix shared folders missing error [GH-5199]
  - provisioners/chef: Use `command -v` to check for binary instead of
      `which` since that doesn't exist on some systems. [GH-5170]
  - provisioners/chef-zero: support more chef-zero/local mode attributes [GH-5339]
  - provisioners/chef: use windows-specific paths in Chef provisioners [GH-5913]
  - provisioners/docker: use docker.com instead of docker.io [GH-5216]
  - provisioners/docker: use `--restart` instead of `-r` on daemon [GH-4477]
  - provisioners/file: validation of source is relative to Vagrantfile [GH-5252]
  - pushes/atlas: send additional box metadata [GH-5283]
  - pushes/local-exec: fix "text file busy" error for inline [GH-5695]
  - pushes/ftp: improve check for remote directory existence [GH-5549]
  - synced\_folders/rsync: add `IdentitiesOnly=yes` to the rsync command. [GH-5175]
  - synced\_folders/smb: use correct `password` option [GH-5805]
  - synced\_folders/smb: prever IPv4 over IPv6 address to mount [GH-5798]
  - virtualbox/config: fix misleading error message for private_network [GH-5536, GH-5418]

## 1.7.2 (January 6, 2015)

BREAKING CHANGES:

  - If you depended on the paths that Chef/Puppet provisioners use to
    store cookbooks (ex. "/tmp/vagrant-chef-1"), these will no longer be
    correct. Without this change, Chef/Puppet didn't work at all with
    `vagrant provision`. We expect this to affect only a minor number of
    people, since it's not something that was ever documented or recommended
    by Vagrant, or even meant to be supported.

FEATURES:

  - provisioners/salt: add support for grains [GH-4895]

IMPROVEMENTS:

  - commands/reload,up: `--provision-with` implies `--provision` [GH-5085]

BUG FIXES:

  - core: private boxes still referencing vagrantcloud.com will have
      their vagrant login access token properly appended
  - core: push plugin configuration is properly validated
  - core: restore box packaging functionality
  - commands/package: fix crash
  - commands/push: push lookups are by user-defined name, not push
      strategy name [GH-4975]
  - commands/push: validate the configuration
  - communicators/winrm: detect parse errors in PowerShell and error
  - guests/arch: fix network configuration due to poor line breaks. [GH-4964]
  - guests/solaris: Merge configurations properly so configs can be set
      in default Vagrantfiles. [GH-5092]
  - installer: SSL cert bundle contains 1024-bit keys, fixing SSL verification
      for a lot of sites.
  - installer: vagrant executable properly `cygpaths` the SSL bundle path
      for Cygwin
  - installer: Nokogiri (XML lib used by Vagrant and dependencies) linker
      dependencies fixed, fixing load issues on some platforms
  - providers/docker: Symlinks in shared folders work. [GH-5093]
  - providers/hyperv: VM start errors turn into proper Vagrant errors. [GH-5101]
  - provisioners/chef: fix missing shared folder error [GH-4988]
  - provisioners/chef: remove Chef version check from solo.rb generation and
      make `roles_path` populate correctly
  - provisioners/chef: fix bad invocation of `with_clean_env` [GH-5021]
  - pushes/atlas: support more verbose logging
  - pushes/ftp: expand file paths relative to the Vagrantfile
  - pushes/ftp: improved debugging output
  - pushes/ftp: create parent directories if they do not exist on the remote
      server

## 1.7.1 (December 11, 2014)

IMPROVEMENTS:

  - provisioners/ansible: Use Docker proxy if needed. [GH-4906]

BUG FIXES:

  - providers/docker: Add support of SSH agent forwarding. [GH-4905]

## 1.7.0 (December 9, 2014)

BREAKING CHANGES:

  - provisioners/ansible: `raw_arguments` has now highest priority
  - provisioners/ansible: only the `ssh` connection transport is supported
      (`paramiko` can be enabled with `raw_arguments` at your own risks)

FEATURES:

  - **Vagrant Push**: Vagrant can now deploy! `vagrant push` is a single
      command to deploy your application. Deploy to Heroku, FTP, or
      HashiCorp's commercial product Atlas. New push strategies can be
      added with plugins.
  - **Named provisioners**: Provisioners can now be named. This name is used
      for output as well as `--provision-with` for better control.
  - Default provider logic improved: Providers in `config.vm.provider` blocks
      in your Vagrantfile now have higher priority than plugins. Earlier
      providers are chosen before later ones. [GH-3812]
  - If the default insecure keypair is used, Vagrant will automatically replace
      it with a randomly generated keypair on first `vagrant up`. [GH-2608]
  - Vagrant Login is now part of Vagrant core
  - Chef Zero provisioner: Use Chef 11's "local" mode to run recipes against an
      in-memory Chef Server
  - Chef Apply provisioner: Specify inline Chef recipes and recipe snippets
      using the Chef Apply provisioner

IMPROVEMENTS:

  - core: `has_plugin?` function now takes a second argument which is a
      version constraint requirement. [GH-4650]
  - core: ".vagrantplugins" file in the same folder as your Vagrantfile
      will be loaded for defining inline plugins. [GH-3775]
  - commands/plugin: Plugin list machine-readable output contains the plugin
      name as the target for versions and other info. [GH-4506]
  - env/with_cleanenv: New helper for plugin developers to use when shelling out
      to another Ruby environment
  - guests/arch: Support predictable network interface naming. [GH-4468]
  - guests/suse: Support NFS client install, rsync setup. [GH-4492]
  - guests/tinycore: Support changing host names. [GH-4469]
  - guests/tinycore: Support DHCP-based networks. [GH-4710]
  - guests/windows: Hostname can be set without reboot. [GH-4687]
  - providers/docker: Build output is now shown. [GH-3739]
  - providers/docker: Can now start containers from private repositories
      more easily. Vagrant will login for you if you specify auth. [GH-4042]
  - providers/docker: `stop_timeout` can be used to modify the `docker stop`
      timeout. [GH-4504]
  - provisioners/chef: Automatically install Chef when using a Chef provisioner.
  - provisioners/ansible: Always show Ansible command executed when Vagrant log
      level is debug (even if ansible.verbose is false)
  - synced\_folders/nfs: Won't use `sudo` to write to /etc/exports if there
      are write privileges. [GH-2643]
  - synced\_folders/smb: Credentials from one SMB will be copied to the rest. [GH-4675]

BUG FIXES:

  - core: Fix cases where sometimes SSH connection would hang.
  - core: On a graceful halt, force halt if capability "insert public key"
      is missing. [GH-4684]
  - core: Don't share `/vagrant` if any "." folder is shared. [GH-4675]
  - core: Fix SSH private key permissions more aggressively. [GH-4670]
  - core: Custom Vagrant Cloud server URL now respected in more cases.
  - core: On downloads, don't continue downloads if the remote server
      doesn't support byte ranges. [GH-4479]
  - core: Box downloads recognize more complex content types that include
      "application/json" [GH-4525]
  - core: If all sub-machines are `autostart: false`, don't start any. [GH-4552]
  - core: Update global-status state in more cases. [GH-4513]
  - core: Only delete machine state if the machine is not created in initialize
  - commands/box: `--cert` flag works properly. [GH-4691]
  - command/docker-logs: Won't crash if container is removed. [GH-3990]
  - command/docker-run: Synced folders will be attached properly. [GH-3873]
  - command/rsync: Sync to Docker containers properly. [GH-4066]
  - guests/darwin: Hostname sets bonjour name and local host name. [GH-4535]
  - guests/freebsd: NFS mounting can specify the version. [GH-4518]
  - guests/linux: More descriptive error message if SMB mount fails. [GH-4641]
  - guests/rhel: Hostname setting on 7.x series works properly. [GH-4527]
  - guests/rhel: Installing NFS client works properly on 7.x [GH-4499]
  - guests/solaris11: Static IP address preserved after restart. [GH-4621]
  - guests/ubuntu: Detect with `lsb_release` instead of `/etc/issue`. [GH-4565]
  - hosts/windows: RDP client shouldn't map all drives by default. [GH-4534]
  - providers/docker: Create args works. [GH-4526]
  - providers/docker: Nicer error if package is called. [GH-4595]
  - providers/docker: Host IP restriction is forwarded through. [GH-4505]
  - providers/docker: Protocol is now honored in direct `ports settings.
  - providers/docker: Images built using `build_dir` will more robustly
      capture the final image. [GH-4598]
  - providers/docker: NFS synced folders now work. [GH-4344]
  - providers/docker: Read the created container ID more robustly.
  - providers/docker: `vagrant share` uses correct IP of proxy VM if it
      exists. [GH-4342]
  - providers/docker: `vagrant_vagrantfile` expands home directory. [GH-4000]
  - providers/docker: Fix issue where multiple identical proxy VMs would
      be created. [GH-3963]
  - providers/docker: Multiple links with the same name work. [GH-4571]
  - providers/virtualbox: Show a human-friendly error if VirtualBox didn't
      clean up an existing VM. [GH-4681]
  - providers/virtualbox: Detect case when VirtualBox reports 0.0.0.0 as
      IP address and don't allow it. [GH-4671]
  - providers/virtualbox: Show more descriptive error if VirtualBox is
      reporting an empty version. [GH-4657]
  - provisioners/ansible: Force `ssh` (OpenSSH) connection by default [GH-3396]
  - provisioners/ansible: Don't use or modify `~/.ssh/known_hosts` file by default,
      similarly to native vagrant commands [GH-3900]
  - provisioners/ansible: Use intermediate Docker host when needed. [GH-4071]
  - provisioners/docker: Get GPG key over SSL. [GH-4597]
  - provisioners/docker: Search for docker binary in multiple places. [GH-4580]
  - provisioners/salt: Highstate works properly with a master. [GH-4471]
  - provisioners/shell: Retry getting SSH info a few times. [GH-3924]
  - provisioners/shell: PowerShell scripts can have args. [GH-4548]
  - synced\_folders/nfs: Don't modify NFS exports file if no exports. [GH-4619]
  - synced\_folders/nfs: Prune exports for file path IDs. [GH-3815]

PLUGIN AUTHOR CHANGES:

  - `Machine#action` can be called with the option `lock: false` to not
      acquire a machine lock.
  - `Machine#reload` will now properly trigger the `machine_id_changed`
      callback on providers.

## 1.6.5 (September 4, 2014)

BUG FIXES:

  - core: forward SSH even if WinRM is used. [GH-4437]
  - communicator/ssh: Fix crash when pty is enabled with SSH. [GH-4452]
  - guests/redhat: Detect various RedHat flavors. [GH-4462]
  - guests/redhat: Fix typo causing crash in configuring networks. [GH-4438]
  - guests/redhat: Fix typo causing hostnames to not set. [GH-4443]
  - providers/virtualbox: NFS works when using DHCP private network. [GH-4433]
  - provisioners/salt: Fix error when removing non-existent bootstrap script
      on Windows. [GH-4614]

## 1.6.4 (September 2, 2014)

BACKWARDS INCOMPATIBILITIES:

  - commands/docker-run: Started containers are now deleted after run.
      Specify the new `--no-rm` flag to retain the original behavior. [GH-4327]
  - providers/virtualbox: Host IO cache is no longer enabled by default
      since it causes stale file issues. Please enable manually if you
      require this. [GH-3934]

IMPROVEMENTS:

  - core: Added `config.vm.box_server_url` setting to point at a
     Vagrant Cloud instance. [GH-4282]
  - core: File checksumming performance has been improved by at least
      100%. Memory requirements have gone down by half. [GH-4090]
  - commands/docker-run: Add the `--no-rm` flag. Containers are
      deleted by default. [GH-4327]
  - commands/plugin: Better error output is shown when plugin installation
      fails.
  - commands/reload: show post up message [GH-4168]
  - commands/rsync-auto: Add `--poll` flag. [GH-4392]
  - communicators/winrm: Show stdout/stderr if command fails. [GH-4094]
  - guests/nixos: Added better NFS support. [GH-3983]
  - providers/hyperv: Accept VHD disk format. [GH-4208]
  - providers/hyperv: Support generation 2 VMs. [GH-4324]
  - provisioners/docker: More verbose output. [GH-4377]
  - provisioners/salt: Get proper exit codes to detect failed runs. [GH-4304]

BUG FIXES:

  - core: Downloading box files should resume in more cases since the
      temporary file is preserved in more cases. [GH-4301]
  - core: Windows is not detected as NixOS in some cases. [GH-4302]
  - core: Fix encoding issues with Windows. There are still some outlying
      but this fixes a few. [GH-4159]
  - core: Fix crash case when destroying with an invalid provisioner. [GH-4281]
  - core: Box names with colons work on Windows. [GH-4100]
  - core: Cleanup all temp files. [GH-4103]
  - core: User curlrc is not loaded, preventing strange download issues.
      [GH-4328]
  - core: VM names may no longer contain brackets, since they cause
      issues with some providers. [GH-4319]
  - core: Use "-f" to `rm` files in case pty is true. [GH-4410]
  - core: SSH key doesn't have to be owned by our user if we're running
      as root. [GH-4387]
  - core: "vagrant provision" will cause "vagrant up" to properly not
      reprovision. [GH-4393]
  - commands/box/add: "Content-Type" header is now case-insensitive when
      looking for metadata type. [GH-4369]
  - commands/docker-run: Named docker containers no longer conflict. [GH-4294]
  - commands/package: base package won't crash with exception [GH-4017]
  - commands/rsync-auto: Destroyed machines won't raise exceptions. [GH-4031]
  - commands/ssh: Extra args are passed through to Docker container. [GH-4378]
  - communicators/ssh: Nicer error if remote unexpectedly disconnects. [GH-4038]
  - communicators/ssh: Clean error when max sessions is hit. [GH-4044]
  - communicators/ssh: Fix many issues around PTY-enabled output parsing.
      [GH-4408]
  - communicators/winrm: Support `mkdir` [GH-4271]
  - communicators/winrm: Properly escape double quotes. [GH-4309]
  - communicators/winrm: Detect failed commands that aren't CLIs. [GH-4383]
  - guests/centos: Fix issues when NFS client is installed by restarting
      NFS [GH-4088]
  - guests/debian: Deleting default route on DHCP networks can fail. [GH-4262]
  - guests/fedora: Fix networks on Fedora 20 with libvirt. [GH-4104]
  - guests/freebsd: Rsync install for rsync synced folders work on
      FreeBSD 10. [GH-4008]
  - guests/freebsd: Configure vtnet devices properly [GH-4307]
  - guests/linux: Show more verbose error when shared folder mount fails.
      [GH-4403]
  - guests/redhat: NFS setup should use systemd for RH7+ [GH-4228]
  - guests/redhat: Detect RHEL 7 (and CentOS) and install Docker properly. [GH-4402]
  - guests/redhat: Configuring networks on EL7 works. [GH-4195]
  - guests/redhat: Setting hostname on EL7 works. [GH-4352]
  - guests/smartos: Use `pfexec` for rsync. [GH-4274]
  - guests/windows: Reboot after hostname change. [GH-3987]
  - hosts/arch: NFS works with latest versions. [GH-4224]
  - hosts/freebsd: NFS exports are proper syntax. [GH-4143]
  - hosts/gentoo: NFS works with latest versions. [GH-4418]
  - hosts/windows: RDP command works without crash. [GH-3962]
  - providers/docker: Port on its own will choose random host port. [GH-3991]
  - providers/docker: The proxy VM Vagrantfile can be in the same directory
      as the main Vagrantfile. [GH-4065]
  - providers/virtualbox: Increase network device limit to 36. [GH-4206]
  - providers/virtualbox: Error if can't detect VM name. [GH-4047]
  - provisioners/cfengine: Fix default Yum repo URL. [GH-4335]
  - provisioners/chef: Chef client cleanup should work. [GH-4099]
  - provisioners/puppet: Manifest file can be a directory. [GH-4169]
  - provisioners/puppet: Properly escape facter variables for PowerShell
      on Windows guests. [GH-3959]
  - provisioners/puppet: When provisioning fails, don't repeat all of
      stdout/stderr. [GH-4303]
  - provisioners/salt: Update salt minion version on Windows. [GH-3932]
  - provisioners/shell: If args is an array and contains numbers, it no
      longer crashes. [GH-4234]
  - provisioners/shell: If fails, the output/stderr isn't repeated
      again. [GH-4087]

## 1.6.3 (May 29, 2014)

FEATURES:

  - **New Guest:** NixOS - Supports changing host names and setting
      networks. [GH-3830]

IMPROVEMENTS:

  - core: A CA path can be specified in the Vagrantfile, not just
      a file, when using a custom CA. [GH-3848]
  - commands/box/add: `--capath` flag added for custom CA path. [GH-3848]
  - commands/halt: Halt in reverse order of up, like destroy. [GH-3790]
  - hosts/linux: Uses rdesktop to RDP into machines if available. [GH-3845]
  - providers/docker: Support for UDP forwarded ports. [GH-3886]
  - provisioners/salt: Works on Windows guests. [GH-3825]

BUG FIXES:

  - core: Provider plugins more easily are compatible with global-status
      and should show less stale data. [GH-3808]
  - core: When setting a synced folder, it will assume it is not disabled
      unless explicitly specified. [GH-3783]
  - core: Ignore UDP forwarded ports for collision detection. [GH-3859]
  - commands/package: Package with `--base` for VirtualBox doesn't
      crash. [GH-3827]
  - guests/solaris11: Fix issue with public network and DHCP on newer
      Solaris releases. [GH-3874]
  - guests/windows: Private networks with static IPs work when there
      is more than one. [GH-3818]
  - guests/windows: Don't look up a forwarded port for WinRM if we're
      not accessing the local host. [GH-3861]
  - guests/windows: Fix errors with arg lists that are too long over
      WinRM in some cases. [GH-3816]
  - guests/windows: Powershell exits with proper exit code, fixing
  -   issues where non-zero exit codes weren't properly detected. [GH-3922]
  - hosts/windows: Don't execute mstsc using PowerShell since it doesn't
      exit properly. [GH-3837]
  - hosts/windows: For RDP, don't remove the Tempfile right away. [GH-3875]
  - providers/docker: Never do graceful shutdown, always use
      `docker stop`. [GH-3798]
  - providers/docker: Better error messaging when SSH is not ready
      direct to container. [GH-3763]
  - providers/docker: Don't port map SSH port if container doesn't
      support SSH. [GH-3857]
  - providers/docker: Proper SSH info if using native driver. [GH-3799]
  - providers/docker: Verify host VM has SSH ready. [GH-3838]
  - providers/virtualbox: On Windows, check `VBOX_MSI_INSTALL_PATH`
      for VBoxManage path as well. [GH-3852]
  - provisioners/puppet: Fix setting facter vars with Windows
      guests. [GH-3776]
  - provisioners/puppet: On Windows, run in elevated prompt. [GH-3903]
  - guests/darwin: Respect mount options for NFS. [GH-3791]
  - guests/freebsd: Properly register the rsync_pre capability
  - guests/windows: Certain executed provisioners won't leave output
      and exit status behind. [GH-3729]
  - synced\_folders/rsync: `rsync__chown` can be set to `false` to
      disable recursive chown after sync. [GH-3810]
  - synced\_folders/rsync: Use a proper msys path if not in
      Cygwin. [GH-3804]
  - synced\_folders/rsync: Don't append args infinitely, clear out
      arg list on each run. [GH-3864]

PLUGIN AUTHOR CHANGES:

  - Providers can now implement the `rdp_info` provider capability
      to get proper info for `vagrant rdp` to function.

## 1.6.2 (May 12, 2014)

IMPROVEMENTS:

  - core: Automatically forward WinRM port if communicator is
      WinRM. [GH-3685]
  - command/rdp: Args after "--" are passed directly through to the
      RDP client. [GH-3686]
  - providers/docker: `build_args` config to specify extra args for
      `docker build`. [GH-3684]
  - providers/docker: Can specify options for the build dir synced
      folder when a host VM is in use. [GH-3727]
  - synced\_folders/nfs: Can tell Vagrant not to handle exporting
      by setting `nfs_export: false` [GH-3636]

BUG FIXES:

  - core: Hostnames can be one character. [GH-3713]
  - core: Don't lock machines on SSH actions. [GH-3664]
  - core: Fixed crash when adding a box from Vagrant Cloud that was the
      same name as a real directory. [GH-3732]
  - core: Parallelization is more stable, doesn't crash due to to
      bad locks. [GH-3735]
  - commands/package: Don't double included files in package. [GH-3637]
  - guests/linux: Rsync chown ignores symlinks. [GH-3744]
  - provisioners/shell: Fix shell provisioner config validation when the
    `binary` option is set to false [GH-3712]
  - providers/docker: default proxy VM won't use HGFS [GH-3687]
  - providers/docker: fix container linking [GH-3719]
  - providers/docker: Port settings expose to host properly. [GH-3723]
  - provisioners/puppet: Separate module paths with ';' on Windows. [GH-3731]
  - synced\_folders\rsync: Copy symlinks as real files. [GH-3734]
  - synced\_folders/rsync: Remove non-portable '-v' flag from chown. [GH-3743]

## 1.6.1 (May 7, 2014)

IMPROVEMENTS:

  - **New guest: Linux Mint** is now properly detected. [GH-3648]

BUG FIXES:

  - core: Global control works from directories that don't have a
      Vagrantfile.
  - core: Plugins that define config methods that collide with Ruby Kernel/Object
  -   methods are merged properly. [GH-3670]
  - commands/docker-run: `--help` works. [GH-3698]
  - commands/package: `--base` works without crashing for VirtualBox.
  - commands/reload: If `--provision` is specified, force provisioning. [GH-3657]
  - guests/redhat: Fix networking issues with CentOS. [GH-3649]
  - guests/windows: Human error if WinRM not in use to configure networks. [GH-3651]
  - guests/windows: Puppet exit code 2 doesn't cause Windows to raise
      an error. [GH-3677]
  - providers/docker: Show proper error message when on Linux. [GH-3654]
  - providers/docker: Proxy VM works properly even if default provider
      environmental variable set to "docker" [GH-3662]
  - providers/docker: Put sync folders in `/var/lib/docker` because
      it usually has disk space. [GH-3680]
  - synced\_folders/rsync: Create the directory before syncing.

## 1.6.0 (May 6, 2014)

BACKWARDS INCOMPATIBILITIES:

  - Deprecated: `halt_timeout` and `halt_check_interval` settings for
      SmartOS, Solaris, and Solaris11 guests. These will be fully
      removed in 1.7. A warning will be shown if they're in use in
      1.6.

FEATURES:

  - **New guest: Windows**. Vagrant now fully supports Windows as a guest
      VM. WinRM can be used for communication (or SSH), and the shell
      provisioner, Chef, and Puppet all work with Windows VMs.
  - **New command: global-status**. This command shows the state of every
      created Vagrant environment on the system for that logged in user.
  - **New command: rdp**. This command connects to the running machine
      via the Remote Desktop Protocol.
  - **New command: version**. This outputs the currently installed version
      as well as the latest version of Vagrant available.
  - **New provider: Docker**. This provider will back your development
      environments with Docker containers. If you're not on Linux, it will
      automatically spin up a VM for you on any provider. You can even
      specify a specific Vagrantfile to use as the Docker container host.
  - Control Vagrant environments from any directory. Using the UUIDs given
      in `vagrant global-status`, you can issue commands from anywhere on
      your machine, not just that environment's directory. Example:
      `vagrant destroy UUID` from anywhere.
  - Can now specify a `post_up_message` in your Vagrantfile that is shown
      after a `vagrant up`. This is useful for putting some instructions of how
      to use the development environment.
  - Can configure provisioners to run "once" or "always" (defaults to "once"),
      so that subsequent `vagrant up` or `reload` calls will always run a
      provisioner. [GH-2421]
  - Multi-machine environments can specify an "autostart" option (default
      to true). `vagrant up` starts all machines that have enabled autostart.
  - Vagrant is smarter about choosing a default provider. If
    `VAGRANT_DEFAULT_PROVIDER` is set, it still takes priority, but otherwise
    Vagrant chooses a "best" provider.

IMPROVEMENTS:

  - core: Vagrant locks machine access to one Vagrant process at a time.
      This will protect against two simultaneous `up` actions happening
      on the same environment.
  - core: Boxes can be compressed with LZMA now as well.
  - commands/box/remove: Warns if the box appears to be in use by an
      environment. Can be forced with `--force`.
  - commands/destroy: Exit codes changes. 0 means everything succeeded.
      1 means everything was declined. 2 means some were declined. [GH-811]
  - commands/destroy: Doesn't require box to exist anymore. [GH-1629]
  - commands/init: force flag. [GH-3564]
  - commands/init: flag for minimal Vagrantfile creation (no comments). [GH-3611]
  - commands/rsync-auto: Picks up and syncs provisioner folders if
      provisioners are backed by rsync.
  - commands/rsync-auto: Detects when new synced folders were added and warns
      user they won't be synced until `vagrant reload`.
  - commands/ssh-config: Works without a target in multi-machine envs [GH-2844]
  - guests/freebsd: Support for virtio interfaces. [GH-3082]
  - guests/openbsd: Support for virtio interfaces. [GH-3082]
  - guests/redhat: Networking works for upcoming RHEL7 release. [GH-3643]
  - providers/hyperv: Implement `vagrant ssh -c` support. [GH-3615]
  - provisioners/ansible: Support for Ansible Vault. [GH-3338]
  - provisioners/ansible: Show Ansible command executed. [GH-3628]
  - provisioners/salt: Colorize option. [GH-3603]
  - provisioners/salt: Ability to specify log level. [GH-3603]
  - synced\_folders: nfs: Improve sudo commands used to make them
      sudoers friendly. Examples in docs. [GH-3638]

BUG FIXES:

  - core: Adding a box from a network share on Windows works again. [GH-3279]
  - commands/plugin/install: Specific versions are now locked in.
  - commands/plugin/install: If insecure RubyGems.org is specified as a
      source, use that. [GH-3610]
  - commands/rsync-auto: Interrupt exits properly. [GH-3552]
  - commands/rsync-auto: Run properly on Windows. [GH-3547]
  - communicators/ssh: Detect if `config.ssh.shell` is invalid. [GH-3040]
  - guests/debian: Can set hostname if hosts doesn't contain an entry
      already for 127.0.1.1 [GH-3271]
  - guests/linux: For `read_ip_address` capability, set `LANG=en` so
      it works on international systems. [GH-3029]
  - providers/virtualbox: VirtualBox detection works properly again on
      Windows when the `VBOX_INSTALL_PATH` has multiple elements. [GH-3549]
  - providers/virtualbox: Forcing MAC address on private network works
      properly again. [GH-3588]
  - provisioners/chef-solo: Fix Chef version checking to work with prerelease
      versions. [GH-3604]
  - provisioners/salt: Always copy keys and configs on provision. [GH-3536]
  - provisioners/salt: Install args should always be present with bootstrap.
  - provisioners/salt: Overwrite keys properly on subsequent provisions [GH-3575]
  - provisioners/salt: Bootstrap uses raw GitHub URL rather than subdomain. [GH-3583]
  - synced\_folders/nfs: Acquires a process-level lock so exports don't
      collide with Vagrant running in parallel.
  - synced\_folders/nfs: Implement usability check so that hosts that
      don't support NFS get an error earlier. [GH-3625]
  - synced\_folders/rsync: Add UserKnownHostsFile option to not complain. [GH-3511]
  - synced\_folders/rsync: Proxy command is used properly if set. [GH-3553]
  - synced\_folders/rsync: Owner/group settings are respected. [GH-3544]
  - synced\_folders/smb: Passwords with symbols work. [GH-3642]

PLUGIN AUTHOR CHANGES:

  - **New host capability:** "rdp\_client". This capability gets the RDP connection
      info and must launch the RDP client on the system.
  - core: The "Call" middleware now merges the resulting middleware stack
      into the current stack, rather than running it as a separate stack.
      The result is that ordering is preserved.
  - core: The "Message" middleware now takes a "post" option that will
      output the message on the return-side of the middleware stack.
  - core: Forwarded port collision repair works when Vagrant is run in
      parallel with other Vagrant processes. [GH-2966]
  - provider: Providers can now specify that boxes are optional. This lets
      you use the provider without a `config.vm.box`. Useful for providers like
      AWS or Docker.
  - provider: A new class-level `usable?` method can be implemented on the
      provider implementation. This returns or raises an error when the
      provider is not usable (i.e. VirtualBox isn't installed for VirtualBox)
  - synced\_folders: New "disable" method for removing synced folders from
      a running machine.

## 1.5.4 (April 21, 2014)

IMPROVEMENTS:

  - commands/box/list: Doesn't parse Vagrantfile. [GH-3502]
  - providers/hyperv: Implement the provision command. [GH-3494]

BUG FIXES:

  - core: Allow overriding of the default SSH port. [GH-3474]
  - commands/box/remove: Make output nicer. [GH-3470]
  - commands/box/update: Show currently installed version. [GH-3467]
  - command/rsync-auto: Works properly on Windows.
  - guests/coreos: Fix test for Docker daemon running.
  - guests/linux: Fix test for Docker provisioner whether Docker is
      running.
  - guests/linux: Fix regression where rsync owner/group stopped
      working. [GH-3485]
  - provisioners/docker: Fix issue where we weren't waiting for Docker
      to properly start before issuing commands. [GH-3482]
  - provisioners/shell: Better validation of master config path, results
      in no more stack traces at runtime. [GH-3505]

## 1.5.3 (April 14, 2014)

IMPROVEMENTS:

  - core: 1.5 upgrade code gives users a chance to quit. [GH-3212]
  - commands/rsync-auto: An initial sync is done before watching folders. [GH-3327]
  - commands/rsync-auto: Exit immediately if there are no paths to watch.
      [GH-3446]
  - provisioners/ansible: custom vars/hosts files can be added in
      .vagrant/provisioners/ansible/inventory/ directory [GH-3436]

BUG FIXES:

  - core: Randomize some filenames internally to improve the parallelism
      of Vagrant. [GH-3386]
  - core: Don't error if network problems cause box update check to
      fail [GH-3391]
  - core: `vagrant` on Windows cmd.exe doesn't always exit with exit
      code zero. [GH-3420]
  - core: Adding a box from a network share has nice error on Windows. [GH-3279]
  - core: Setting an ID on a provisioner now works. [GH-3424]
  - core: All synced folder paths containing symlinks are fully
      expanded before sharing. [GH-3444]
  - core: Windows no longer sees "process not started" errors rarely.
  - commands/box/repackage: Works again. [GH-3372]
  - commands/box/update: Update should check for updates from latest
      version. [GH-3452]
  - commands/package: Nice error if includes contain symlinks. [GH-3200]
  - commands/rsync-auto: Don't crash if the machine can't be communicated
      to. [GH-3419]
  - communicators/ssh: Throttle connection attempt warnings if the warnings
      are the same. [GH-3442]
  - guests/coreos: Docker provisioner works. [GH-3425]
  - guests/fedora: Fix hostname setting. [GH-3382]
  - guests/fedora: Support predictable network interface names for
      public/private networks. [GH-3207]
  - guests/linux: Rsync folders have proper group if owner not set. [GH-3223]
  - guests/linux: If SMB folder mounting fails, the password will no
      longer be shown in plaintext in the output. [GH-3203]
  - guests/linux: SMB mount works with passwords with symbols. [GH-3202]
  - providers/hyperv: Check for PowerShell features. [GH-3398]
  - provisioners/docker: Don't automatically generate container name with
      a forward slash. [GH-3216]
  - provisioners/shell: Empty shell scripts don't cause errors. [GH-3423]
  - synced\_folders/smb: Only set the chmod properly by default on Windows
      if it isn't already set. [GH-3394]
  - synced\_folders/smb: Sharing folders with odd characters like parens
      works properly now. [GH-3405]

## 1.5.2 (April 2, 2014)

IMPROVEMENTS:

  - **New guest:** SmartOS
  - core: Change wording from "error" to "warning" on SSH retry output
    to convey actual meaning.
  - commands/plugin: Listing plugins now has machine-readable output. [GH-3293]
  - guests/omnios: Mount NFS capability [GH-3282]
  - synced\_folders/smb: Verify PowerShell v3 or later is running. [GH-3257]

BUG FIXES:

  - core: Vagrant won't collide with newer versions of Bundler [GH-3193]
  - core: Allow provisioner plugins to not have a config class. [GH-3272]
  - core: Removing a specific box version that doesn't exist doesn't
      crash Vagrant. [GH-3364]
  - core: SSH commands are forced to be ASCII.
  - core: private networks with DHCP type work if type parameter is
      a string and not a symbol. [GH-3349]
  - core: Converting to cygwin path works for folders with spaces. [GH-3304]
  - core: Can add boxes with spaces in their path. [GH-3306]
  - core: Prerelease plugins installed are locked to that prerelease
      version. [GH-3301]
  - core: Better error message when adding a box with a malformed version. [GH-3332]
  - core: Fix a rare issue where vagrant up would complain it couldn't
      check version of a box that doesn't exist. [GH-3326]
  - core: Box version constraint can't be specified with old-style box. [GH-3260]
  - commands/box: Show versions when listing. [GH-3316]
  - commands/box: Outdated check can list local boxes that are newer. [GH-3321]
  - commands/status: Machine readable output contains the target. [GH-3218]
  - guests/arch: Reload udev rules after network change. [GH-3322]
  - guests/debian: Changing host name works properly. [GH-3283]
  - guests/suse: Shutdown works correctly on SLES [GH-2775]
  - hosts/linux: Don't hardcode `exportfs` path. Now searches the PATH. [GH-3292]
  - providers/hyperv: Resume command works properly. [GH-3336]
  - providers/virtualbox: Add missing translation for stopping status. [GH-3368]
  - providers/virtualbox: Host-only networks set cableconnected property
      to "yes" [GH-3365]
  - provisioners/docker: Use proper flags for 0.9. [GH-3356]
  - synced\_folders/rsync: Set chmod flag by default on Windows. [GH-3256]
  - synced\_folders/smb: IDs of synced folders are hashed to work better
      with VMware. [GH-3219]
  - synced\_folders/smb: Properly remove existing folders with the
      same name. [GH-3354]
  - synced\_folders/smb: Passwords with symbols now work. [GH-3242]
  - synced\_folders/smb: Exporting works for non-english locale Windows
      machines. [GH-3251]

## 1.5.1 (March 13, 2014)

IMPROVEMENTS:

  - guests/tinycore: Will now auto-install rsync.
  - synced\_folders/rsync: rsync-auto will not watch filesystem for
    excluded paths. [GH-3159]

BUG FIXES:

  - core: V1 Vagrantfiles can upgrade provisioners properly. [GH-3092]
  - core: Rare EINVAL errors on box adding are gone. [GH-3094]
  - core: Upgrading the home directory for Vagrant 1.5 uses the Vagrant
    temp dir. [GH-3095]
  - core: Assume a box isn't metadata if it exceeds 20 MB. [GH-3107]
  - core: Asking for input works even in consoles that don't support
    hiding input. [GH-3119]
  - core: Adding a box by path in Cygwin on Windows works. [GH-3132]
  - core: PowerShell scripts work when they're in a directory with
    spaces. [GH-3100]
  - core: If you add a box path that doesn't exist, error earlier. [GH-3091]
  - core: Validation on forwarded ports to make sure they're between
    0 and 65535. [GH-3187]
  - core: Downloads with user/password use the curl `-u` flag. [GH-3183]
  - core: `vagrant help` no longer loads the Vagrantfile. [GH-3180]
  - guests/darwin: Fix an exception when configuring networks. [GH-3143]
  - guests/linux: Only chown folders/files in rsync if they don't
    have the proper owner. [GH-3186]
  - hosts/linux: Unusual sed delimiter to avoid conflicts. [GH-3167]
  - providers/virtualbox: Make more internal interactions with VBoxManage
    retryable to avoid spurious VirtualBox errors. [GH-2831]
  - providers/virtualbox: Import progress works again on Windows.
  - provisioners/ansible: Request SSH info within the provision method,
    when we know its available. [GH-3111]
  - synced\_folders/rsync: owner/group settings work. [GH-3163]

## 1.5.0 (March 10, 2014)

BREAKING CHANGES:

  - provisioners/ansible: the machine name (taken from Vagrantfile) is now
    set as default limit to ensure that vagrant provision steps only
    affect the expected machine.

DEPRECATIONS:

  - provisioners/chef-solo: The "nfs" setting has been replaced by
    `synced_folder_type`. The "nfs" setting will be removed in the next
    version.
  - provisioners/puppet: The "nfs" setting has been replaced by
    `synced_folder_type`. The "nfs" setting will be removed in the next
    version.

FEATURES:

  - **New provider:** Hyper-V. If you're on a Windows machine with Hyper-V
    enabled, Vagrant can now manage Hyper-V virtual machines out of the box.
  - **New guest:** Funtoo (change host name and networks supported)
  - **New guest:** NetBSD
  - **New guest:** TinyCore Linux. This allows features such as networking,
    halting, rsync and more work with Boot2Docker.
  - **New synced folder type:** rsync - Does a one-time one-directional sync
    to the guest machine. New commands `vagrant rsync` and `vagrant rsync-auto`
    can resync the folders.
  - **New synced folder type:** SMB- Allows bi-directional folder syncing
    using SMB on Windows hosts with any guest.
  - Password-based SSH authentication. This lets you use almost any off-the-shelf
    virtual machine image with Vagrant. Additionally, Vagrant will automatically
    insert a keypair into the machine.
  - Plugin versions can now be constrained to a range of versions. Example:
    `vagrant plugin install foo --plugin-version "> 1.0, < 1.1"`
  - Host-specific operations now use a "host capabilities" system much like
    guests have used "guest capabilities" for a few releases now. This allows
    plugin developers to create pluggable host-specific capabilities and makes
    further integrating Vagrant with new operating systems even easier.
  - You can now override provisioners within sub-VM configuration and
    provider overrides. See documentation for more info. [GH-1113]
  - providers/virtualbox: Provider-specific configuration `cpus` can be used
    to set the number of CPUs on the VM [GH-2800]
  - provisioners/docker: Can now build images using `docker build`. [GH-2615]

IMPROVEMENTS:

  - core: Added "error-exit" type to machine-readable output which contains
    error information that caused a non-zero exit status. [GH-2999]
  - command/destroy: confirmation will re-ask question if bad input. [GH-3027]
  - guests/solaris: More accurate Solaris >= 11, < 11 detection. [GH-2824]
  - provisioners/ansible: Generates a single inventory file, rather than
    one per machine. See docs for more info. [GH-2991]
  - provisioners/ansible: SSH forwarding support. [GH-2952]
  - provisioners/ansible: Multiple SSH keys can now be attempted [GH-2952]
  - provisioners/ansible: Disable SSH host key checking by default,
    which improves the experience. We believe this is a sane default
    for ephemeral dev machines.
  - provisioners/chef-solo: New config `synced_folder_type` replaces the
    `nfs` option. This can be used to set the synced folders the provisioner
    needs to any type. [GH-2709]
  - provisioners/chef-solo: `roles_paths` can now be an array of paths in
    Chef 11.8.0 and newer. [GH-2975]
  - provisioners/docker: Can start a container without daemonization.
  - provisioners/docker: Started containers are given names. [GH-3051]
  - provisioners/puppet: New config `synced_folder_type` replaces the
    `nfs` option. This can be used to set the synced folders the provisioner
    needs to any type. [GH-2709]
  - commands/plugin: `vagrant plugin update` will now update all installed
    plugins, respecting any constraints set.
  - commands/plugin: `vagrant plugin uninstall` can now uninstall multiple
    plugins.
  - commands/plugin: `vagrant plugin install` can now install multiple
    plugins.
  - hosts/redhat: Recognize Korora OS. [GH-2869]
  - synced\_folders/nfs: If the guest supports it, NFS clients will be
    automatically installed in the guest.

BUG FIXES:

  - core: If an exception was raised while attempting to connect to SSH
    for the first time, it would get swallowed. It is properly raised now.
  - core: Plugin installation does not fail if your local gemrc file has
    syntax errors.
  - core: Plugins that fork within certain actions will no longer hang
    indefinitely. [GH-2756]
  - core: Windows checks home directory permissions more correctly to
    warn of potential issues.
  - core: Synced folders set to the default synced folder explicitly won't
    be deleted. [GH-2873]
  - core: Static IPs can end in ".1". A warning is now shown. [GH-2914]
  - core: Adding boxes that have directories in them works on Windows.
  - core: Vagrant will not think provisioning is already done if
    the VM is manually deleted outside of Vagrant.
  - core: Box file checksums of large files works properly on Windows.
    [GH-3045]
  - commands/box: Box add `--force` works with `--provider` flag. [GH-2757]
  - commands/box: Listing boxes with machine-readable output crash is gone.
  - commands/plugin: Plugin installation will fail if dependencies conflict,
    rather than at runtime.
  - commands/ssh: When using `-c` on Windows, no more TTY errors.
  - commands/ssh-config: ProxyCommand is included in output if it is
    set. [GH-2950]
  - guests/coreos: Restart etcd after configuring networks. [GH-2852]
  - guests/linux: Don't chown VirtualBox synced folders if mounting
    as readonly. [GH-2442]
  - guests/redhat: Set hostname to FQDN, per the documentation for RedHat.
    [GH-2792]
  - hosts/bsd: Don't invoke shell for NFS sudo calls. [GH-2808]
  - hosts/bsd: Sort NFS exports to avoid false validation errors. [GH-2927]
  - hosts/bsd: No more checkexports NFS errors if you're sharing the
    same directory. [GH-3023]
  - hosts/gentoo: Look for systemctl in `/usr/bin` [GH-2858]
  - hosts/linux: Properly escape regular expression to prune NFS exports,
    allowing VMware to work properly. [GH-2934]
  - hosts/opensuse: Start NFS server properly. [GH-2923]
  - providers/virtualbox: Enabling internal networks by just setting "true"
    works properly. [GH-2751]
  - providers/virtualbox: Make more internal interactions with VBoxManage
    retryable to avoid spurious VirtualBox errors. [GH-2831]
  - providers/virtualbox: Config validation catches invalid keys. [GH-2843]
  - providers/virtualbox: Fix network adapter configuration issue if using
    provider-specific config. [GH-2854]
  - providers/virtualbox: Bridge network adapters always have their
    "cable connected" properly. [GH-2906]
  - provisioners/chef: When chowning folders, don't follow symlinks.
  - provisioners/chef: Encrypted data bag secrets also in Chef solo are
    now uploaded to the provisioning path to avoid perm issues. [GH-2845]
  - provisioners/chef: Encrypted data bag secret is removed from the
    machine before and after provisioning also with Chef client. [GH-2845]
  - provisioners/chef: Set `encrypted_data_bag_secret` on the VM to `nil`
    if the secret is not specified. [GH-2984]
  - provisioners/chef: Fix loading of the custom configure file. [GH-876]
  - provisioners/docker: Only add SSH user to docker group if the user
    isn't already in it. [GH-2838]
  - provisioners/docker: Configuring autostart works properly with
    the newest versions of Docker. [GH-2874]
  - provisioners/puppet: Append default module path to the module paths
    always. [GH-2677]
  - provisioners/salt: Setting pillar data doesn't require `deep_merge`
    plugin anymore. [GH-2348]
  - provisioners/salt: Options can now set install type and install args.
    [GH-2766]
  - provisioners/salt: Fix case when salt would say "options only allowed
    before install arguments" [GH-3005]
  - provisioners/shell: Error if script is encoded incorrectly. [GH-3000]
  - synced\_folders/nfs: NFS entries are pruned on every `vagrant up`,
    if there are any to prune. [GH-2738]

## 1.4.3 (January 2, 2014)

BUG FIXES:

  - providers/virtualbox: `vagrant package` works properly again. [GH-2739]

## 1.4.2 (December 31, 2013)

IMPROVEMENTS:

  - guests/linux: emit upstart event when NFS folders are mounted. [GH-2705]
  - provisioners/chef-solo: Encrypted data bag secret is removed from the
    machine after provisioning. [GH-2712]

BUG FIXES:

  - core: Ctrl-C no longer raises "trap context" exception.
  - core: The version for `Vagrant.configure` can now be an int. [GH-2689]
  - core: `Vagrant.has_plugin?` tries to use plugin's gem name before
    registered plugin name [GH-2617]
  - core: Fix exception if an EOFError was somehow raised by Ruby while
    checking a box checksum. [GH-2716]
  - core: Better error message if your plugin state file becomes corrupt
    somehow. [GH-2694]
  - core: Box add will fail early if the box already exists. [GH-2621]
  - hosts/bsd: Only run `nfsd checkexports` if there is an exports file.
    [GH-2714]
  - commands/plugin: Fix exception that could happen rarely when installing
    a plugin.
  - providers/virtualbox: Error when packaging if the package already exists
    _before_ the export is done. [GH-2380]
  - providers/virtualbox: NFS with static IP works even if VirtualBox
    guest additions aren't installed (regression). [GH-2674]
  - synced\_folders/nfs: sudo will only ask for password one at a time
    when using a parallel provider [GH-2680]

## 1.4.1 (December 18, 2013)

IMPROVEMENTS:

  - hosts/bsd: check NFS exports file for issues prior to exporting
  - provisioners/ansible: Add ability to use Ansible groups in generated
    inventory [GH-2606]
  - provisioners/docker: Add support for using the provisioner with RedHat
    based guests [GH-2649]
  - provisioners/docker: Remove "Docker" prefix from Client and Installer
    classes [GH-2641]

BUG FIXES:

  - core: box removal of a V1 box works
  - core: `vagrant ssh -c` commands are now executed in the context of
    a login shell (regression). [GH-2636]
  - core: specifying `-t` or `-T` to `vagrant ssh -c` as extra args
    will properly enable/disable a TTY for OpenSSH. [GH-2618]
  - commands/init: Error if can't write Vagrantfile to directory. [GH-2660]
  - guests/debian: fix `use_dhcp_assigned_default_route` to work properly.
    [GH-2648]
  - guests/debian,ubuntu: fix change\_host\_name for FQDNs with trailing
    dots [GH-2610]
  - guests/freebsd: configuring networks in the guest works properly
    [GH-2620]
  - guests/redhat: fix configure networks bringing down interfaces that
    don't exist. [GH-2614]
  - providers/virtualbox: Don't override NFS exports for all VMs when
    coming up. [GH-2645]
  - provisioners/ansible: Array arguments work for raw options [GH-2667]
  - provisioners/chef-client: Fix node/client deletion when node\_name is not
    set. [GH-2345]
  - provisioners/chef-solo: Force remove files to avoid cases where
    a prompt would be shown to users. [GH-2669]
  - provisioners/puppet: Don't prepend default module path for Puppet
    in case Puppet is managing its own paths. [GH-2677]

## 1.4.0 (December 9, 2013)

FEATURES:

  - New provisioner: Docker. Install Docker, pull containers, and run
    containers easier than ever.
  - Machine readable output. Vagrant now has machine-friendly output by
    using the `--machine-readable` flag.
  - New plugin type: synced folder implementation. This allows new ways of
    syncing folders to be added as plugins to Vagrant.
  - The `Vagrant.require_version` function can be used at the top of a Vagrantfile
    to enforce a minimum/maximum Vagrant version.
  - Adding boxes via `vagrant box add` and the Vagrantfile both support
    providing checksums of the box files.
  - The `--debug` flag can be specified on any command now to get debug-level
    log output to ease reporting bugs.
  - You can now specify a memory using `vb.memory` setting with VirtualBox.
  - Plugin developers can now hook into `environment_plugins_loaded`, which is
    executed after plugins are loaded but before Vagrantfiles are parsed.
  - VirtualBox internal networks are now supported. [GH-2020]

IMPROVEMENTS:

  - core: Support resumable downloads [GH-57]
  - core: owner/group of shared folders can be specified by integers. [GH-2390]
  - core: the VAGRANT\_NO\_COLOR environmental variable may be used to enable
    `--no-color` mode globally. [GH-2261]
  - core: box URL and add date is tracked and shown if `-i` flag is
    specified for `vagrant box list` [GH-2327]
  - core: Multiple SSH keys can be specified with `config.ssh.private_key_path`
    [GH-907]
  - core: `config.vm.box_url` can be an array of URLs. [GH-1958]
  - commands/box/add: Can now specify a custom CA cert for verifying
    certs from a custom CA. [GH-2337]
  - commands/box/add: Can now specify a client cert when downloading a
    box. [GH-1889]
  - commands/init: Add `--output` option for specifying output path, or
    "-" for stdin. [GH-1364]
  - commands/provision: Add `--no-parallel` option to disable provider
    parallelization if the provider supports it. [GH-2404]
  - commands/ssh: SSH compression is enabled by default. [GH-2456]
  - commands/ssh: Inline commands specified with "-c" are now executed
    using OpenSSH rather than pure-Ruby SSH. It is MUCH faster, and
    stdin works!
  - communicators/ssh: new configuration `config.ssh.pty` is a boolean for
    whether you want ot use a PTY for provisioning.
  - guests/linux: emit upstart event `vagrant-mounted` if upstart is
    available. [GH-2502]
  - guests/pld: support changing hostname [GH-2543]
  - providers/virtualbox: Enable symlinks for VirtualBox 4.1. [GH-2414]
  - providers/virtualbox: default VM name now includes milliseconds with
    a random number to try to avoid conflicts in CI environments. [GH-2482]
  - providers/virtualbox: customizations via VBoxManage are retried, avoiding
    VirtualBox flakiness [GH-2483]
  - providers/virtualbox: NFS works with DHCP host-only networks now. [GH-2560]
  - provisioners/ansible: allow files for extra vars [GH-2366]
  - provisioners/puppet: client cert and private key can now be specified
    for the puppet server provisioner. [GH-902]
  - provisioners/puppet: the manifests path can be in the VM. [GH-1805]
  - provisioners/shell: Added `keep_color` option to not automatically color
    output based on stdout/stderr. [GH-2505]
  - provisioners/shell: Arguments can now be an array of args. [GH-1949]
  - synced\_folders/nfs: Specify `nfs_udp` to false to disable UDP based
    NFS folders. [GH-2304]

BUG FIXES:

  - core: Make sure machine IDs are always strings. [GH-2434]
  - core: 100% CPU spike when waiting for SSH is fixed. [GH-2401]
  - core: Command lookup works on systems where PATH is not valid UTF-8 [GH-2514]
  - core: Human-friendly error if box metadata.json becomes corrupted. [GH-2305]
  - core: Don't load Vagrantfile on `vagrant plugin` commands, allowing
    Vagrantfiles that use plugins to work. [GH-2388]
  - core: global flags are ignored past the "--" on the CLI. [GH-2491]
  - core: provisioning will properly happen if `up` failed. [GH-2488]
  - guests/freebsd: Mounting NFS folders works. [GH-2400]
  - guests/freebsd: Uses `sh` by default for shell. [GH-2485]
  - guests/linux: upstart events listening for `vagrant-mounted` won't
    wait for jobs to complete, fixing issues with blocking during
    vagrant up [GH-2564]
  - guests/redhat: `DHCP_HOSTNAME` is set to the hostname, not the FQDN. [GH-2441]
  - guests/redhat: Down interface before messing up configuration file
    for networking. [GH-1577]
  - guests/ubuntu: "localhost" is preserved when changing hostnames.
    [GH-2383]
  - hosts/bsd: Don't set mapall if maproot is set in NFS. [GH-2448]
  - hosts/gentoo: Support systemd for NFS startup. [GH-2382]
  - providers/virtualbox: Don't start new VM if VirtualBox has transient
    failure during `up` from suspended. [GH-2479]
  - provisioners/chef: Chef client encrypted data bag secrets are now
    uploaded to the provisioning path to avoid perm issues. [GH-1246]
  - provisioners/chef: Create/chown the cache and backup folders. [GH-2281]
  - provisioners/chef: Verify environment paths exist in config
    validation step. [GH-2381]
  - provisioners/puppet: Multiple puppet definitions in a Vagrantfile
    work correctly.
  - provisioners/salt: Bootstrap on FreeBSD systems work. [GH-2525]
  - provisioners/salt: Extra args for bootstrap are put in the proper
    location. [GH-2558]

## 1.3.5 (October 15, 2013)

FEATURES:

  - VirtualBox 4.3 is now supported. [GH-2374]
  - ESXi is now a supported guest OS. [GH-2347]

IMPROVEMENTS:

  - guests/redhat: Oracle Linux is now supported. [GH-2329]
  - provisioners/salt: Support running overstate. [GH-2313]

BUG FIXES:

  - core: Fix some places where "no error message" errors were being
    reported when in fact there were errors. [GH-2328]
  - core: Disallow hyphens or periods for starting hostnames. [GH-2358]
  - guests/ubuntu: Setting hostname works properly. [GH-2334]
  - providers/virtualbox: Retryable VBoxManage commands are properly
    retried. [GH-2365]
  - provisioners/ansible: Verbosity won't be blank by default. [GH-2320]
  - provisioners/chef: Fix exception raised during Chef client node
    cleanup. [GH-2345]
  - provisioners/salt: Correct master seed file name. [GH-2359]

## 1.3.4 (October 2, 2013)

FEATURES:

  - provisioners/shell: Specify the `binary` option as true and Vagrant won't
    automatically replace Windows line endings with Unix ones.  [GH-2235]

IMPROVEMENTS:

  - guests/suse: Support installing CFEngine. [GH-2273]

BUG FIXES:

  - core: Don't output `\e[0K` anymore on Windows. [GH-2246]
  - core: Only modify `DYLD_LIBRARY_PATH` on Mac when executing commands
    in the installer context. [GH-2231]
  - core: Clear `DYLD_LIBRARY_PATH` on Mac if the subprocess is executing
    a setuid or setgid script. [GH-2243]
  - core: Defined action hook names can be strings now. They are converted
    to symbols internally.
  - guests/debian: FQDN is properly set when setting the hostname. [GH-2254]
  - guests/linux: Fix poor chown command for mounting VirtualBox folders.
  - guests/linux: Don't raise exception right away if mounting fails, allow
    retries. [GH-2234]
  - guests/redhat: Changing hostname changes DHCP_HOSTNAME. [GH-2267]
  - hosts/arch: Vagrant won't crash on Arch anymore. [GH-2233]
  - provisioners/ansible: Extra vars are converted to strings. [GH-2244]
  - provisioners/ansible: Output will show up on a task-by-task basis. [GH-2194]
  - provisioners/chef: Propagate disabling color if Vagrant has no color
    enabled. [GH-2246]
  - provisioners/chef: Delete from chef server exception fixed. [GH-2300]
  - provisioners/puppet: Work with restrictive umask. [GH-2241]
  - provisioners/salt: Remove bootstrap definition file on each run in
    order to avoid permissions issues. [GH-2290]

## 1.3.3 (September 18, 2013)

BUG FIXES:

  - core: Fix issues with dynamic linker not finding symbols on OS X. [GH-2219]
  - core: Properly clean up machine directories on destroy. [GH-2223]
  - core: Add a timeout to waiting for SSH connection and server headers
    on SSH. [GH-2226]

## 1.3.2 (September 17, 2013)

IMPROVEMENTS:

  - provisioners/ansible: Support more verbosity levels, better documentation.
    [GH-2153]
  - provisioners/ansible: Add `host_key_checking` configuration. [GH-2203]

BUG FIXES:

  - core: Report the proper invalid state when waiting for the guest machine
    to be ready
  - core: `Guest#capability?` now works with strings as well
  - core: Fix NoMethodError in the new `Vagrant.has_plugin?` method [GH-2189]
  - core: Convert forwarded port parameters to integers. [GH-2173]
  - core: Don't spike CPU to 100% while waiting for machine to boot. [GH-2163]
  - core: Increase timeout for individual SSH connection to 60 seconds. [GH-2163]
  - core: Call realpath after creating directory so NFS directory creation
    works. [GH-2196]
  - core: Don't try to be clever about deleting the machine state
    directory anymore. Manually done in destroy actions. [GH-2201]
  - core: Find the root Vagrantfile only if Vagrantfile is a file, not
    a directory. [GH-2216]
  - guests/linux: Try `id -g` in addition to `getent` for mounting
    VirtualBox shared folders [GH-2197]
  - hosts/arch: NFS exporting works properly, no exceptions. [GH-2161]
  - hosts/bsd: Use only `sudo` for writing NFS exports. This lets NFS
    exports work if you have sudo privs but not `su`. [GH-2191]
  - hosts/fedora: Fix host detection encoding issues. [GH-1977]
  - hosts/linux: Fix NFS export problems with `no_subtree_check`. [GH-2156]
  - installer/mac: Vagrant works properly when a library conflicts from
    homebrew. [GH-2188]
  - installer/mac: deb/rpm packages now have an epoch of 1 so that new
    installers don't appear older. [GH-2179]
  - provisioners/ansible: Default output level is now verbose again. [GH-2194]
  - providers/virtualbox: Fix an issue where destroy middlewares weren't
    being properly called. [GH-2200]

## 1.3.1 (September 6, 2013)

BUG FIXES:

  - core: Fix various issues where using the same options hash in a
    Vagrantfile can cause errors.
  - core: `VAGRANT_VAGRANTFILE` env var only applies to the project
    Vagrantfile name. [GH-2130]
  - core: Fix an issue where the data directory would be deleted too
    quickly in a multi-VM environment.
  - core: Handle the case where we get an EACCES cleaning up the .vagrant
    directory.
  - core: Fix exception on upgrade warnings from V1 to V2. [GH-2142]
  - guests/coreos: Proper IP detection. [GH-2146]
  - hosts/linux: NFS exporting works properly again. [GH-2137]
  - provisioners/chef: Work even with restrictive umask on user. [GH-2121]
  - provisioners/chef: Fix environment validation to be less restrictive.
  - provisioners/puppet: No more "shared folders cannot be found" error.
    [GH-2134]
  - provisioners/puppet: Work with restrictive umask on user by testing
    for folders with sudo. [GH-2121]

## 1.3.0 (September 5, 2013)

BACKWARDS INCOMPATIBILITY:

  - `config.ssh.max_tries` is gone. Instead of maximum tries, Vagrant now
    uses a simple overall timeout value `config.vm.boot_timeout` to wait for
    the machine to boot up.
  - `config.vm.graceful_halt_retry_*` settings are gone. Instead, a single
    timeout is now used to wait for a graceful halt to work, specified
    by `config.vm.graceful_halt_timeout`.
  - The ':extra' flag to shared folders for specifying arbitrary mount
    options has been replaced with the `:mount_options` flag, which is now
    an array of mount options.
  - `vagrant up` will now only run provisioning by default the first time
   it is run. Subsequent `reload` or `up` will need to explicitly specify
   the `--provision` flag to provision. [GH-1776]

FEATURES:

  - New command: `vagrant plugin update` to update specific installed plugins.
  - New provisioner: File provisioner. [GH-2112]
  - New provisioner: Salt provisioner. [GH-1626]
  - New guest: Mac OS X guest support. [GH-1914]
  - New guest: CoreOS guest support. Change host names and configure networks on
    CoreOS. [GH-2022]
  - New guest: Solaris 11 guest support. [GH-2052]
  - Support for environments in the Chef-solo provisioner. [GH-1915]
  - Provisioners can now define "cleanup" tasks that are executed on
    `vagrant destroy`. [GH-1302]
  - Chef Client provisioner will now clean up the node/client using
    `knife` if configured to do so.
  - `vagrant up` has a `--no-destroy-on-error` flag that will not destroy
    the VM if a fatal error occurs. [GH-2011]
  - NFS: Arbitrary mount options can be specified using the
   `mount_options` option on synced folders. [GH-1029]
  - NFS: Arbitrary export options can be specified using
   `bsd__nfs_options` and `linux__nfs_options`. [GH-1029]
  - Static IP can now be set on public networks. [GH-1745]
  - Add `Vagrant.has_plugin?` method for use in Vagrantfile to check
    if a plugin is installed. [GH-1736]
  - Support for remote shell provisioning scripts [GH-1787]

IMPROVEMENTS:

  - core: add `--color` to any Vagrant command to FORCE color output. [GH-2027]
  - core: "config.vm.host_name" works again, just an alias to hostname.
  - core: Reboots via SSH are now handled gracefully (without exception).
  - core: Mark `disabled` as true on forwarded port to disable. [GH-1922]
  - core: NFS exports are now namespaced by user ID, so pruning NFS won't
    remove exports from other users. [GH-1511]
  - core: "vagrant -v" no longer loads the Vagrantfile
  - commands/box/remove: Fix stack trace that happens if no provider
    is specified. [GH-2100]
  - commands/plugin/install: Post install message of a plugin will be
    shown if available. [GH-1986]
  - commands/status: cosmetic improvement to better align names and
    statuses [GH-2016]
  - communicators/ssh: Support a proxy_command. [GH-1537]
  - guests/openbsd: support configuring networks, changing host name,
    and mounting NFS. [GH-2086]
  - guests/suse: Supports private/public networks. [GH-1689]
  - hosts/fedora: Support RHEL as a host. [GH-2088]
  - providers/virtualbox: "post-boot" customizations will run directly
    after boot, and before waiting for SSH. [GH-2048]
  - provisioners/ansible: Many more configuration options. [GH-1697]
  - provisioners/ansible: Ansible `inventory_path` can be a directory now. [GH-2035]
  - provisioners/ansible: Extra verbose option by setting `config.verbose`
    to `extra`. [GH-1979]
  - provisioners/ansible: `inventory_path` will be auto-generated if not
    specified. [GH-1907]
  - provisioners/puppet: Add `nfs` option to puppet provisioner. [GH-1308]
  - provisioners/shell: Set the `privileged` option to false to run
    without sudo. [GH-1370]

BUG FIXES:

  - core: Clean up ".vagrant" folder more effectively.
  - core: strip newlines off of ID file values [GH-2024]
  - core: Multiple forwarded ports with different protocols but the same
    host port can be specified. [GH-2059]
  - core: `:nic_type` option for private networks is respected. [GH-1704]
  - commands/up: provision-with validates the provisioners given. [GH-1957]
  - guests/arch: use systemd way of setting host names. [GH-2041]
  - guests/debian: Force bring up eth0. Fixes hangs on setting hostname.
   [GH-2026]
  - guests/ubuntu: upstart events are properly emitted again. [GH-1717]
  - hosts/bsd: Nicer error if can't read NFS exports. [GH-2038]
  - hosts/fedora: properly detect later CentOS versions. [GH-2008]
  - providers/virtualbox: VirtualBox 4.2 now supports up to 36
    network adapters. [GH-1886]
  - provisioners/ansible: Execute ansible with a cwd equal to the
    path where the Vagrantfile is. [GH-2051]
  - provisioners/all: invalid config keys will be properly reported. [GH-2117]
  - provisioners/ansible: No longer report failure on every run. [GH-2007]
  - provisioners/ansible: Properly handle extra vars with spaces. [GH-1984]
  - provisioners/chef: Formatter option works properly. [GH-2058]
  - provisioners/chef: Create/chown the provisioning folder before
    reading contents. [GH-2121]
  - provisioners/puppet: mount synced folders as root to avoid weirdness
  - provisioners/puppet: Run from the correct working directory. [GH-1967]
    with Puppet. [GH-2015]
  - providers/virtualbox: Use `getent` to get the group ID instead of
    `id` in case the name doesn't have a user. [GH-1801]
  - providers/virtualbox: Will only set the default name of the VM on
    initial `up`. [GH-1817]

## 1.2.7 (July 28, 2013)

BUG FIXES:

  - On Windows, properly convert synced folder host path to a string
    so that separator replacement works properly.
  - Use `--color=false` for no color in Puppet to support older
    versions properly. [GH-2000]
  - Make sure the hostname configuration is a string. [GH-1999]
  - cURL downloads now contain a user agent which fixes some
    issues with downloading Vagrant through proxies. [GH-2003]
  - `vagrant plugin install` will now always properly show the actual
    installed gem name. [GH-1834]

## 1.2.6 (July 26, 2013)

BUG FIXES:

  - Box collections with multiple formats work properly by converting
    the supported formats to symbols. [GH-1990]

## 1.2.5 (July 26, 2013)

FEATURES:

  - `vagrant help <command>` now works. [GH-1578]
  - Added `config.vm.box_download_insecure` to allow the box_url setting
    to point to an https site that won't be validated. [GH-1712]
  - VirtualBox VBoxManage customizations can now be specified to run
    pre-boot (the default and existing functionality, pre-import,
    or post-boot. [GH-1247]
  - VirtualBox no longer destroys unused network interfaces by default.
    This didn't work across multi-user systems and required admin privileges
    on Windows, so it has been disabled by default. It can be enabled using
    the VirtualBox provider-specific `destroy_unused_network_interfaces`
    configuration by setting it to true. [GH-1324]

IMPROVEMENTS:

  - Remote commands that fail will now show the stdout/stderr of the
    command that failed. [GH-1203]
  - Puppet will run without color if the UI is not colored. [GH-1344]
  - Chef supports the "formatter" configuration for setting the
    formatter. [GH-1250]
  - VAGRANT_DOTFILE_PATH environmental variable reintroduces the
    functionality removed in 1.1 from "config.dotfile_name" [GH-1524]
  - Vagrant will show an error if VirtualBox 4.2.14 is running.
  - Added provider to BoxNotFound error message. [GH-1692]
  - If Ansible fails to run properly, show an error message. [GH-1699]
  - Adding a box with the `--provider` flag will now allow a box for
    any of that provider's supported formats.
  - NFS mounts enable UDP by default, resulting in higher performance.
    (Because mount is over local network, packet loss is not an issue)
   [GH-1706]

BUG FIXES:

  - `box_url` now handles the case where the provider doesn't perfectly
    match the provider in use, but the provider supports it. [GH-1752]
  - Fix uninitialized constant error when configuring Arch Linux network. [GH-1734]
  - Debian/Ubuntu change hostname works properly if eth0 is configured
    with hot-plugging. [GH-1929]
  - NFS exports with improper casing on Mac OS X work properly. [GH-1202]
  - Shared folders overriding '/vagrant' in multi-VM environments no
    longer all just use the last value. [GH-1935]
  - NFS export fsid's are now 32-bit integers, rather than UUIDs. This
    lets NFS exports work with Linux kernels older than 2.6.20. [GH-1127]
  - NFS export allows access from all private networks on the VM. [GH-1204]
  - Default VirtualBox VM name now contains the machine name as defined
    in the Vagrantfile, helping differentiate multi-VM. [GH-1281]
  - NFS works properly on CentOS hosts. [GH-1394]
  - Solaris guests actually shut down properly. [GH-1506]
  - All provisioners only output newlines when the provisioner sends a
    newline. This results in the output looking a lot nicer.
  - Sharing folders works properly if ".profile" contains an echo. [GH-1677]
  - `vagrant ssh-config` IdentityFile is only wrapped in quotes if it
    contains a space. [GH-1682]
  - Shared folder target path can be a Windows path. [GH-1688]
  - Forwarded ports don't auto-correct by default, and will raise an
    error properly if they collide. [GH-1701]
  - Retry SSH on ENETUNREACH error. [GH-1732]
  - NFS is silently ignored on Windows. [GH-1748]
  - Validation so that private network static IP does not end in ".1" [GH-1750]
  - With forward agent enabled and sudo being used, Vagrant will automatically
    discover and set `SSH_AUTH_SOCK` remotely so that forward agent
    works properly despite misconfigured sudoers. [GH-1307]
  - Synced folder paths on Windows containing '\' are replaced with
    '/' internally so that they work properly.
  - Unused config objects are finalized properly. [GH-1877]
  - Private networks work with Fedora guests once again. [GH-1738]
  - Default internal encoding of strings in Vagrant is now UTF-8, allowing
    detection of Fedora to work again (which contained a UTF-8 string). [GH-1977]

## 1.2.4 (July 16, 2013)

FEATURES:

  - Chef solo and client provisioning now support a `custom_config_path`
    setting that accepts a path to a Ruby file to load as part of Chef
    configuration, allowing you to override any setting available. [GH-876]
  - CFEngine provisioner: you can now specify the package name to install,
    so CFEngine enterprise is supported. [GH-1920]

IMPROVEMENTS:

  - `vagrant box remove` works with only the name of the box if that
    box exists only backed by one provider. [GH-1032]
  - `vagrant destroy` returns exit status 1 if any of the confirmations
    are declined. [GH-923]
  - Forwarded ports can specify a host IP and guest IP to bind to. [GH-1121]
  - You can now set the "ip" of a private network that uses DHCP. This will
    change the subnet and such that the DHCP server uses.
  - Add `file_cache_path` support for chef_solo. [GH-1897]

BUG FIXES:

  - VBoxManage or any other executable missing from PATH properly
    reported. Regression from 1.2.2. [GH-1928]
  - Boxes downloaded as part of `vagrant up` are now done so _prior_ to
    config validation. This allows Vagrantfiles to references files that
    may be in the box itself. [GH-1061]
  - Chef removes dna.json and encrypted data bag secret file prior to
    uploading. [GH-1111]
  - NFS synced folders exporting sub-directories of other exported folders now
    works properly. [GH-785]
  - NFS shared folders properly dereference symlinks so that the real path
    is used, avoiding mount errors [GH-1101]
  - SSH channel is closed after the exit status is received, potentially
    eliminating any SSH hangs. [GH-603]
  - Fix regression where VirtualBox detection wasn't working anymore. [GH-1918]
  - NFS shared folders with single quotes in their name now work properly. [GH-1166]
  - Debian/Ubuntu request DHCP renewal when hostname changes, which will
    fix issues with FQDN detecting. [GH-1929]
  - SSH adds the "DSAAuthentication=yes" option in case that is disabled
    on the user's system. [GH-1900]

## 1.2.3 (July 9, 2013)

FEATURES:

  - Puppet provisioner now supports Hiera by specifying a `hiera_config_path`.
  - Added a `working_directory` configuration option to the Puppet apply
    provisioner so you can specify the working directory when `puppet` is
    called, making it friendly to Hiera data and such. [GH-1670]
  - Ability to specify the host IP to bind forwarded ports to. [GH-1785]

IMPROVEMENTS:

  - Setting hostnames works properly on OmniOS. [GH-1672]
  - Better VBoxManage error detection on Windows systems. This avoids
    some major issues where Vagrant would sometimes "lose" your VM. [GH-1669]
  - Better detection of missing VirtualBox kernel drivers on Linux
    systems. [GH-1671]
  - More precise detection of Ubuntu/Debian guests so that running Vagrant
    within an LXC container works properly now.
  - Allow strings in addition to symbols to more places in V1 configuration
    as well as V2 configuration.
  - Add `ARPCHECK=0` to RedHat OS family network configuration. [GH-1815]
  - Add SSH agent forwarding sample to initial Vagrantfile. [GH-1808]
  - VirtualBox: Only configure networks if there are any to configure.
    This allows linux's that don't implement this capability to work with
    Vagrant. [GH-1796]
  - Default SSH forwarded port now binds to 127.0.0.1 so only local
    connections are allowed. [GH-1785]
  - Use `netctl` for Arch Linux network configuration. [GH-1760]
  - Improve fedora host detection regular expression. [GH-1913]
  - SSH shows a proper error on EHOSTUNREACH. [GH-1911]

BUG FIXES:

  - Ignore "guest not ready" errors when attempting to graceful halt and
    carry on checks whether the halt succeeded. [GH-1679]
  - Handle the case where a roles path for Chef solo isn't properly
    defined. [GH-1665]
  - Finding V1 boxes now works properly again to avoid "box not found"
    errors. [GH-1691]
  - Setting hostname on SLES 11 works again. [GH-1781]
  - `config.vm.guest` properly forces guests again. [GH-1800]
  - The `read_ip_address` capability for linux properly reads the IP
    of only the first network interface. [GH-1799]
  - Validate that an IP is given for a private network. [GH-1788]
  - Fix uninitialized constant error for Gentoo plugin. [GH-1698]

## 1.2.2 (April 23, 2013)

FEATURES:

  - New `DestroyConfirm` built-in middleware for providers so they can
    more easily conform to the `destroy` action.

IMPROVEMENTS:

  - No longer an error if the Chef run list is empty. It is now
    a warning. [GH-1620]
  - Better locking around handling the `box_url` parameter for
    parallel providers.
  - Solaris guest is now properly detected on SmartOS, OmniOS, etc. [GH-1639]
  - Guest addition version detection is more robust, attempting other
    routes to get the version, and also retrying a few times. [GH-1575]

BUG FIXES:

  - `vagrant package --base` works again. [GH-1615]
  - Box overrides specified in provider config overrides no longer
    fail to detect the box. [GH-1617]
  - In a multi-machine environment, a box not found won't be downloaded
    multiple times. [GH-1467]
  - `vagrant box add` with a file path now works correctly on Windows
    when a drive letter is specified.
  - DOS line endings are converted to Unix line endings for the
    shell provisioner automatically. [GH-1495]

## 1.2.1 (April 17, 2013)

FEATURES:

  - Add a `--[no-]parallel` flag to `vagrant up` to enable/disable
    parallelism. Vagrant will parallelize by default.

IMPROVEMENTS:

  - Get rid of arbitrary 4 second sleep when connecting via SSH. The
    issue it was attempting to work around may be gone now.

BUG FIXES:

  - Chef solo run list properly set. [GH-1608]
  - Follow 30x redirects when downloading boxes. [GH-1607]
  - Chef client config defaults are done properly. [GH-1609]
  - VirtualBox mounts shared folders with the proper owner/group. [GH-1611]
  - Use the Mozilla CA cert bundle for cURL so SSL validation works
    properly.

## 1.2.0 (April 16, 2013)

BACKWARDS INCOMPATIBILITIES:

  - WINDOWS USERS: Vagrant now defaults to using the 'USERPROFILE' environmental
    variable for the home directory if it is set. This means that the default
    location for the Vagrant home directory is now `%USERPROFILE%/.vagrant.d`.
    On Cygwin, this will cause existing Cygwin users to "lose" their boxes.
    To work around this, either set `VAGRANT_HOME` to your Cygwin ".vagrant.d"
    folder or move your ".vagrant.d" folder to `USERPROFILE`. The latter is
    recommended for long-term support.
  - The constant `Vagrant::Environment::VAGRANT_HOME` was removed in favor of
    `Vagrant::Environment#default_vagrant_home`.

FEATURES:

  - Providers can now parallelize! If they explicitly support it, Vagrant
    will run "up" and other commands in parallel. For providers such AWS,
    this means that your instances will come up in parallel. VirtualBox
    does not support this mode.
  - Box downloads are now done via `curl` rather than Ruby's built-in
    HTTP library. This results in massive speedups, support for SSL
    verification, FTP downloads, and more.
  - `config.vm.provider` now takes an optional second parameter to the block,
    allowing you to override any configuration value. These overrides are
    applied last, and therefore override any other configuration value.
    Note that while this feature is available, the "Vagrant way" is instead
    to use box manifests to ensure that the "box" for every provider matches,
    so these sorts of overrides are unnecessary.
  - A new "guest capabilities" system to replace the old "guest" system.
    This new abstraction allows plugins to define "capabilities" that
    certain guest operating systems can implement. This allows greater
    flexibility in doing guest-specific behavior.
  - Ansible provisioner support. [GH-1465]
  - Providers can now support multiple box formats by specifying the
    `box_format:` option.
  - CFEngine provisioner support.
  - `config.ssh.default` settings introduced to set SSH defaults that
    providers can still override. [GH-1479]

IMPROVEMENTS:

  - Full Windows support in cmd.exe, PowerShell, Cygwin, and MingW based
    environments.
  - By adding the "disabled" boolean flag to synced folders you can disable
    them altogether. [GH-1004]
  - Specify the default provider with the `VAGRANT_DEFAULT_PROVIDER`
    environmental variable. [GH-1478]
  - Invalid settings are now caught and shown in a user-friendly way. [GH-1484]
  - Detect PuTTY Link SSH client on Windows and show an error. [GH-1518]
  - `vagrant ssh` in Cygwin won't output DOS path file warnings.
  - Add `--rtcuseutc on` as a sane default for VirtualBox. [GH-912]
  - SSH will send keep-alive packets every 5 seconds by default to
    keep connections alive. Can be disabled with `config.ssh.keep_alive`. [GH-516]
  - Show a message on `vagrant up` if the machine is already running. [GH-1558]
  - "Running provisioner" output now shoes the provisioner shortcut name,
    rather than the less-than-helpful class name.
  - Shared folders with the same guest path will overwrite each other. No
    more shared folder IDs.
  - Shell provisioner outputs script it is running. [GH-1568]
  - Automatically merge forwarded ports that share the same host
    port.

BUG FIXES:

  - The `:mac` option for host-only networks is respected. [GH-1536]
  - Don't preserve modified time when untarring boxes. [GH-1539]
  - Forwarded port auto-correct will not auto-correct to a port
    that is also in use.
  - Cygwin will always output color by default. Specify `--no-color` to
    override this.
  - Assume Cygwin has a TTY for asking for input. [GH-1430]
  - Expand Cygwin paths to Windows paths for calls to VBoxManage and
    for VirtualBox shared folders.
  - Output the proper clear line text for shells in Cygwin when
    reporting dynamic progress.
  - When using `Builder` instances for hooks, the builders will be
    merged for the proper before/after chain. [GH-1555]
  - Use the Vagrant temporary directory again for temporary files
    since they can be quite large and were messing with tmpfs. [GH-1442]
  - Fix issue parsing extra SSH args in `vagrant ssh` in multi-machine
    environments. [GH-1545]
  - Networks come back up properly on RedHat systems after reboot. [GH-921]
  - `config.ssh` settings override all detected SSH settings (regression). [GH-1479]
  - `ssh-config` won't raise an exception if the VirtualBox machine
    is not created. [GH-1562]
  - Multiple machines defined in the same Vagrantfile with the same
    name will properly merge.
  - More robust hostname checking for RedHat. [GH-1566]
  - Cookbook path existence for Chef is no longer an error, so that
    things like librarian and berkshelf plugins work properly. [GH-1570]
  - Chef solo provisioner uses proper SSH username instead of hardcoded
    config. [GH-1576]
  - Shell provisioner takes ownership of uploaded files properly so
    that they can also be manually executed later. [GH-1576]

## 1.1.6 (April 3, 2013)

BUG FIXES:

  - Fix SSH re-use connection logic to drop connection if an
    error occurs.

## 1.1.5 (April 2, 2013)

IMPROVEMENTS:

  - More robust SSH connection close detection.
  - Don't load `vagrant plugin` installed plugins when in a Bundler
    environment. This happens during plugin development. This will make
    Vagrant errors much quieter when developing plugins.
  - Vagrant will detect Bundler environments, make assumptions that you're
    developing plugins, and will quiet its error output a bit.
  - More comprehensive synced folder configuration validation.
  - VBoxManage errors now show the output from the command so that
    users can potentially know what is wrong.

BUG FIXES:

  - Proper error message if invalid provisioner is used. [GH-1515]
  - Don't error on graceful halt if machine just shut down very
    quickly. [GH-1505]
  - Error message if private key for SSH isn't owned by the proper
    user. [GH-1503]
  - Don't error too early when `config.vm.box` is not properly set.
  - Show a human-friendly error if VBoxManage is not found (exit
    status 126). [GH-934]
  - Action hook prepend/append will only prepend or append once.
  - Retry SSH on Errno::EACCES.
  - Show an error if an invalid network type is used.
  - Don't share Chef solo folder if it doesn't exist on host.

## 1.1.4 (March 25, 2013)

BUG FIXES:

  - Default forwarded port adapter for VirtualBox should be 1.

## 1.1.3 (March 25, 2013)

IMPROVEMENTS:

  - Puppet apply provisioner now retains the default module path
    even while specifying custom module paths. [GH-1207]
  - Re-added DHCP support for host-only networks. [GH-1466]
  - Ability to specify a plugin version, plugin sources, and
    pre-release versions using `--plugin-version`, `--plugin-source`,
    and `--plugin-prerelease`. [GH-1461]
  - Move VirtualBox guest addition checks to after the machine
    boots. [GH-1179]
  - Removed `Vagrant::TestHelpers` because it doesn't really work anymore.
  - Add PLX linux guest support. [GH-1490]

BUG FIXES:

  - Attempt to re-establish SSH connection on `Net::SSH::Disconnect`
  - Allow any value that can convert to a string for `Vagrant.plugin`
  - Chef solo `recipe_url` works properly again. [GH-1467]
  - Port collision detection works properly in VirtualBox with
    auto-corrected ports. [GH-1472]
  - Fix obscure error when temp directory is world writable when
    adding boxes.
  - Improved error handling around network interface detection for
    VirtualBox [GH-1480]

## 1.1.2 (March 18, 2013)

BUG FIXES:

  - When not specifying a cookbooks_path for chef-solo, an error won't
    be shown if "cookbooks" folder is missing.
  - Fix typo for exception when no host-only network with NFS. [GH-1448]
  - Use UNSET_VALUE/nil with args on shell provisioner by default since
    `[]` was too truthy. [GH-1447]

## 1.1.1 (March 18, 2013)

IMPROVEMENTS:

  - Don't load plugins on any `vagrant plugin` command, so that errors
    are avoided. [GH-1418]
  - An error will be shown if you forward a port to the same host port
    multiple times.
  - Automatically convert network, provider, and provisioner names to
    symbols internally in case people define them as strings.
  - Using newer versions of net-ssh and net-scp. [GH-1436]

BUG FIXES:

  - Quote keys to StringBlockEditor so keys with spaces, parens, and
    so on work properly.
  - When there is no route to host for SSH, re-establish a new connection.
  - `vagrant package` once again works, no more nil error. [GH-1423]
  - Human friendly error when "metadata.json" is missing in a box.
  - Don't use the full path to the manifest file with the Puppet provisioner
    because it exposes a bug with Puppet path lookup on VMware.
  - Fix bug in VirtualBox provider where port forwarding just didn't work if
    you attempted to forward to a port under 1024. [GH-1421]
  - Fix cross-device box adds for Windows. [GH-1424]
  - Fix minor issues with defaults of configuration of the shell
    provisioner.
  - Fix Puppet server using "host_name" instead of "hostname" [GH-1444]
  - Raise a proper error if no hostonly network is found for NFS with
    VirtualBox. [GH-1437]

## 1.1.0 (March 14, 2013)

BACKWARDS INCOMPATIBILITIES:

  - Vagrantfiles from 1.0.x that _do not use_ any plugins are fully
    backwards compatible. If plugins are used, they must be removed prior
    to upgrading. The new plugin system in place will avoid this issue in
    the future.
  - Lots of changes introduced in the form of a new configuration version and
    format, but this is _opt-in_. Old Vagrantfile format continues to be supported,
    as promised. To use the new features that will be introduced throughout
    the 1.x series, you'll have to upgrade at some point.
  - The .vagrant file is no longer supported and has been replaced by
    a .vagrant directory. Running vagrant will automatically upgrade
    to the new style directory format, after which old versions of
    Vagrant will not be able to see or control your VM.

FEATURES:

  - Groundwork for **providers**, alternate backends for Vagrant that
    allow Vagrant to power systems other than VirtualBox. Much improvement
    and change will come to this throughout the 1.x lifecycle. The API
    will continue to change, features will be added, and more. Specifically,
    a revamped system for handling shared folders gracefully across providers
    will be introduced in a future release.
  - New plugin system which adds much more structure and stability to
    the overall API. The goal of this system is to make it easier to write
    powerful plugins for Vagrant while providing a backwards-compatible API
    so that plugins will always _load_ (though they will almost certainly
    not be _functional_ in future versions of Vagrant).
  - Plugins are now installed and managed using the `vagrant plugin` interface.
  - Allow "file://" URLs for box URLs. [GH-1087]
  - Emit "vagrant-mount" upstart event when NFS shares are mounted. [GH-1118]
  - Add a VirtualBox provider config `auto_nat_dns_proxy` which when set to
    false will not attempt to automatically manage NAT DNS proxy settings
    with VirtualBox. [GH-1313]
  - `vagrant provision` accepts the `--provision-with` flag [GH-1167]
  - Set the name of VirtualBox machines with `virtualbox.name` in the
    VirtualBox provider config. [GH-1126]
  - `vagrant ssh` will execute an `ssh` binary on Windows if it is on
    your PATH. [GH-933]
  - The environmental variable `VAGRANT_VAGRANTFILE` can be used to
    specify an alternate Vagrantfile filename.

IMPROVEMENTS / BUG FIXES:

  - Vagrant works much better in Cygwin environments on Windows by
    properly resolving Cygwin paths. [GH-1366]
  - Improve the SSH "ready?" check by more gracefully handling timeouts. [GH-841]
  - Human friendly error if connection times out for HTTP downloads. [GH-849]
  - Detect when the VirtualBox installation is incomplete and error. [GH-846]
  - Detect when kernel modules for VirtualBox need to be installed on Gentoo
    systems and report a user-friendly error. [GH-710]
  - All `vagrant` commands that can take a target VM name can take one even
    if you're not in a multi-VM environment. [GH-894]
  - Hostname is set before networks are setup to avoid very slow `sudo`
    speeds on CentOS. [GH-922]
  - `config.ssh.shell` now includes the flags to pass to it, such as `-l` [GH-917]
  - The check for whether a port is open or not is more complete by
    catching ENETUNREACH errors. [GH-948]
  - SSH uses LogLevel FATAL so that errors are still shown.
  - Sending a SIGINT (Ctrl-C) very early on when executing `vagrant` no
    longer results in an ugly stack trace.
  - Chef JSON configuration output is now pretty-printed to be
    human readable. [GH-1146]
    that SSHing succeeds when booting a machine.
  - VMs in the "guru meditation" state can be destroyed now using
    `vagrant destroy`.
  - Fix issue where changing SSH key permissions didn't properly work. [GH-911]
  - Fix issue where Vagrant didn't properly detect VBoxManage on Windows
    if VBOX_INSTALL_PATH contained multiple paths. [GH-885]
  - Fix typo in setting host name for Gentoo guests. [GH-931]
  - Files that are included with `vagrant package --include` now properly
    preserve file attributes on earlier versions of Ruby. [GH-951]
  - Multiple interfaces now work with Arch linux guests. [GH-957]
  - Fix issue where subprocess execution would always spin CPU of Ruby
    process to 100%. [GH-832]
  - Fix issue where shell provisioner would sometimes never end. [GH-968]
  - Fix issue where puppet would reorder module paths. [GH-964]
  - When console input is asked for (destroying a VM, bridged interfaces, etc.),
    keystrokes such as ctrl-D and ctrl-C are more gracefully handled. [GH-1017]
  - Fixed bug where port check would use "localhost" on systems where
    "localhost" is not available. [GH-1057]
  - Add missing translation for "saving" state on VirtualBox. [GH-1110]
  - Proper error message if the remote end unexpectedly resets the connection
    while downloading a box over HTTP. [GH-1090]
  - Human-friendly error is raised if there are permission issues when
    using SCP to upload files. [GH-924]
  - Box adding doesn't use `/tmp` anymore which can avoid some cross-device
    copy issues. [GH-1199]
  - Vagrant works properly in folders with strange characters. [GH-1223]
  - Vagrant properly handles "paused" VirtualBox machines. [GH-1184]
  - Better behavior around permissions issues when copying insecure
    private key. [GH-580]

## 1.0.7 (March 13, 2013)

  - Detect if a newer version of Vagrant ran and error if it did,
    because we're not forward-compatible.
  - Check for guest additions version AFTER booting. [GH-1179]
  - Quote IdentityFile in `ssh-config` so private keys with spaces in
    the path work. [GH-1322]
  - Fix issue where multiple Puppet module paths can be re-ordered [GH-964]
  - Shell provisioner won't hang on Windows anymore due to unclosed
    tempfile. [GH-1040]
  - Retry setting default VM name, since it sometimes fails first time. [GH-1368]
  - Support setting hostname on Suse [GH-1063]

## 1.0.6 (December 21, 2012)

  - Shell provisioner outputs proper line endings on Windows [GH-1164]
  - SSH upload opens file to stream which fixes strange upload issues.
  - Check for proper exit codes for Puppet, since multiple exit codes
    can mean success. [GH-1180]
  - Fix issue where DNS doesn't resolve properly for 12.10. [GH-1176]
  - Allow hostname to be a substring of the box name for Ubuntu [GH-1163]
  - Use `puppet agent` instead of `puppetd` to be Puppet 3.x
    compatible. [GH-1169]
  - Work around bug in VirtualBox exposed by bug in OS X 10.8 where
    VirtualBox executables couldn't handle garbage being injected into
    stdout by OS X.

## 1.0.5 (September 18, 2012)

  - Work around a critical bug in VirtualBox 4.2.0 on Windows that
    causes Vagrant to not work. [GH-1130]
  - Plugin loading works better on Windows by using the proper
    file path separator.
  - NFS works on Fedora 16+. [GH-1140]
  - NFS works with newer versions of Arch hosts that use systemd. [GH-1142]

## 1.0.4 (September 13, 2012)

  - VirtualBox 4.2 driver. [GH-1120]
  - Correct `ssh-config` help to use `--host`, not `-h`.
  - Use "127.0.0.1" instead of "localhost" for port checking to fix problem
    where "localhost" is not properly setup. [GH-1057]
  - Disable read timeout on Net::HTTP to avoid `rbuf_fill` error. [GH-1072]
  - Retry SSH on `EHOSTUNREACH` errors.
  - Add missing translation for "saving" state. [GH-1110]

## 1.0.3 (May 1, 2012)

  - Don't enable NAT DNS proxy on machines where resolv.conf already points
    to localhost. This allows Vagrant to work once again with Ubuntu
    12.04. [GH-909]

## 1.0.2 (March 25, 2012)

  - Provisioners will still mount folders and such if `--no-provision` is
    used, so that `vagrant provision` works. [GH-803]
  - Nicer error message if an unsupported SSH key type is used. [GH-805]
  - Gentoo guests can now have their host names changed. [GH-796]
  - Relative paths can be used for the `config.ssh.private_key_path`
    setting. [GH-808]
  - `vagrant ssh` now works on Solaris, where `IdentitiesOnly` was not
    an available option. [GH-820]
  - Output works properly in the face of broken pipes. [GH-819]
  - Enable Host IO Cache on the SATA controller by default.
  - Chef-solo provisioner now supports encrypted data bags. [GH-816]
  - Enable the NAT DNS proxy by default, allowing your DNS to continue
    working when you switch networks. [GH-834]
  - Checking for port forwarding collisions also checks for other applications
    that are potentially listening on that port as well. [GH-821]
  - Multiple VM names can be specified for the various commands now. For
    example: `vagrant up web db service`. [GH-795]
  - More robust error handling if a VM fails to boot. The error message
    is much clearer now. [GH-825]

## 1.0.1 (March 11, 2012)

  - Installers are now bundled with Ruby 1.9.3p125. Previously they were
    bundled with 1.9.3p0. This actually fixes some IO issues with Windows.
  - Windows installer now outputs a `vagrant` binary that will work in msys
    or Cygwin environments.
  - Fix crashing issue which manifested itself in multi-VM environments.
  - Add missing `rubygems` require in `environment.rb` to avoid
    possible load errors. [GH-781]
  - `vagrant destroy` shows a nice error when called without a
    TTY (and hence can't confirm). [GH-779]
  - Fix an issue with the `:vagrantfile_name` option to `Vagrant::Environment`
    not working properly. [GH-778]
  - `VAGRANT_CWD` environmental variable can be used to set the CWD to
    something other than the current directory.
  - Downloading boxes from servers that don't send a content-length
    now works properly. [GH-788]
  - The `:facter` option now works for puppet server. [GH-790]
  - The `--no-provision` and `--provision-with` flags are available to
    `vagrant reload` now.
  - `:openbsd` guest which supports only halting at the moment. [GH-773]
  - `ssh-config -h` now shows help, instead of assuming a host is being
    specified. For host, you can still use `--host`. [GH-793]

## 1.0.0 (March 6, 2012)

  - `vagrant gem` should now be used to install Vagrant plugins that are
    gems. This installs the gems to a private gem folder that Vagrant adds
    to its own load path. This isolates Vagrant-related gems from system
    gems.
  - Plugin loading no longer happens right when Vagrant is loaded, but when
    a Vagrant environment is loaded. I don't anticipate this causing any
    problems but it is a backwards incompatible change should a plugin
    depend on this (but I don't see any reason why they would).
  - `vagrant destroy` now asks for confirmation by default. This can be
    overridden with the `--force` flag. [GH-699]
  - Fix issue with Puppet config inheritance. [GH-722]
  - Fix issue where starting a VM on some systems was incorrectly treated
    as failing. [GH-720]
  - It is now an error to specify the packaging `output` as a directory. [GH-730]
  - Unix-style line endings are used properly for guest OS. [GH-727]
  - Retry certain VirtualBox operations, since they intermittently fail.
    [GH-726]
  - Fix issue where Vagrant would sometimes "lose" a VM if an exception
    occurred. [GH-725]
  - `vagrant destroy` destroys virtual machines in reverse order. [GH-739]
  - Add an `fsid` option to Linux NFS exports. [GH-736]
  - Fix edge case where an exception could be raised in networking code. [GH-742]
  - Add missing translation for the "guru meditation" state. [GH-745]
  - Check that VirtualBox exists before certain commands. [GH-746]
  - NIC type can be defined for host-only network adapters. [GH-750]
  - Fix issue where re-running chef-client would sometimes cause
    problems due to file permissions. [GH-748]
  - FreeBSD guests can now have their hostnames changed. [GH-757]
  - FreeBSD guests now support host only networking and bridged networking. [GH-762]
  - `VM#run_action` is now public so plugin-devs can hook into it.
  - Fix crashing bug when attempting to run commands on the "primary"
    VM in a multi-VM environment. [GH-761]
  - With puppet you can now specify `:facter` as a dictionary of facts to
    override what is generated by Puppet. [GH-753]
  - Automatically convert all arguments to `customize` to strings.
  - openSUSE host system. [GH-766]
  - Fix subprocess IO deadlock which would occur on Windows. [GH-765]
  - Fedora 16 guest support. [GH-772]

## 0.9.7 (February 9, 2012)

  - Fix regression where all subprocess IO simply didn't work with
    Windows. [GH-721]

## 0.9.6 (February 7, 2012)

  - Fix strange issue with inconsistent childprocess reads on JRuby. [GH-711]
  - `vagrant ssh` does a direct `exec()` syscall now instead of going through
    the shell. This makes it so things like shell expansion oddities no longer
    cause problems. [GH-715]
  - Fix crashing case if there are no ports to forward.
  - Fix issue surrounding improper configuration of host only networks on
    RedHat guests. [GH-719]
  - NFS should work properly on Gentoo. [GH-706]

## 0.9.5 (February 5, 2012)

  - Fix crashing case when all network options are `:auto_config false`.
    [GH-689]
  - Type of network adapter can be specified with `:nic_type`. [GH-690]
  - The NFS version can be specified with the `:nfs_version` option
    on shared folders. [GH-557]
  - Greatly improved FreeBSD guest and host support. [GH-695]
  - Fix instability with RedHat guests and host only and bridged networks.
    [GH-698]
  - When using bridged networking, only list the network interfaces
    that are up as choices. [GH-701]
  - More intelligent handling of the `certname` option for puppet
    server. [GH-702]
  - You may now explicitly set the network to bridge to in the Vagrantfile
    using the `:bridge` parameter. [GH-655]

## 0.9.4 (January 28, 2012)

  - Important internal changes to middlewares that make plugin developer's
    lives much easier. [GH-684]
  - Match VM names that have parens, brackets, etc.
  - Detect when the VirtualBox kernel module is not loaded and error. [GH-677]
  - Set `:auto_config` to false on any networking option to not automatically
    configure it on the guest. [GH-663]
  - NFS shared folder guest paths can now contain shell expansion characters
    such as `~`.
  - NFS shared folders with a `:create` flag will have their host folders
    properly created if they don't exist. [GH-667]
  - Fix the precedence for Arch, Ubuntu, and FreeBSD host classes so
    they are properly detected. [GH-683]
  - Fix issue where VM import sometimes made strange VirtualBox folder
    layouts. [GH-669]
  - Call proper `id` command on Solaris. [GH-679]
  - More accurate VBoxManage error detection.
  - Shared folders can now be marked as transient using the `:transient`
    flag. [GH-688]

## 0.9.3 (January 24, 2012)

  - Proper error handling for not enough arguments to `box` commands.
  - Fix issue causing crashes with bridged networking. [GH-673]
  - Ignore host only network interfaces that are "down." [GH-675]
  - Use "printf" instead of "echo" to determine shell expanded files paths
    which is more generally POSIX compliant. [GH-676]

## 0.9.2 (January 20, 2012)

  - Support shell expansions in shared folder guest paths again. [GH-656]
  - Fix issue where Chef solo always expected the host to have a
    "cookbooks" folder in their directory. [GH-638]
  - Fix `forward_agent` not working when outside of blocks. [GH-651]
  - Fix issue causing custom guest implementations to not load properly.
  - Filter clear screen character out of output on SSH.
  - Log output now goes on `stderr`, since it is utility information.
  - Get rid of case where a `NoMethodError` could be raised while
    determining VirtualBox version. [GH-658]
  - Debian/Ubuntu uses `ifdown` again, instead of `ifconfig xxx down`, since
    the behavior seems different/wrong.
  - Give a nice error if `:vagrant` is used as a JSON key, since Vagrant
    uses this. [GH-661]
  - If there is only one bridgeable interface, use that without asking
    the user. [GH-655]
  - The shell will have color output if ANSICON is installed on Windows. [GH-666]

## 0.9.1 (January 18, 2012)

  - Use `ifconfig device down` instead of `ifdown`. [GH-649]
  - Clearer invalid log level error. [GH-645]
  - Fix exception raised with NFS `recover` method.
  - Fix `ui` `NoMethodError` exception in puppet server.
  - Fix `vagrant box help` on Ruby 1.8.7. [GH-647]

## 0.9.0 (January 17, 2012)

  - VirtualBox 4.0 support backported in addition to supporting VirtualBox 4.1.
  - `config.vm.network` syntax changed so that the first argument is now the type
    of argument. Previously where you had `config.vm.network "33.33.33.10"` you
    should now put `config.vm.network :hostonly, "33.33.33.10"`. This is in order
    to support bridged networking, as well.
  - `config.vm.forward_port` no longer requires a name parameter.
  - Bridged networking. `config.vm.network` with `:bridged` as the option will
    setup a bridged network.
  - Host only networks can be configured with DHCP now. Specify `:dhcp` as
    the IP and it will be done.
  - `config.vm.customize` now takes a command to send to `VBoxManage`, so any
    arbitrary command can be sent. The older style of passing a block no longer
    works and Vagrant will give a proper error message if it notices this old-style
    being used.
  - `config.ssh.forwarded_port_key` is gone. Vagrant no longer cares about
    forwarded port names for any reason. Please use `config.ssh.guest_port`
    (more below).
  - `config.ssh.forwarded_port_destination` has been replaced by
    `config.ssh.guest_port` which more accurately reflects what it is
    used for. Vagrant will automatically scan forwarded ports that match the
    guest port to find the SSH port.
  - Logging. The entire Vagrant source has had logging sprinkled throughout
    to make debugging issues easier. To enable logging, set the VAGRANT_LOG
    environmental variable to the log level you wish to see. By default,
    logging is silent.
  - `system` renamed to `guest` throughout the source. Any `config.vm.system`
    configurations must be changed to `config.vm.guest`
  - Puppet provisioner no longer defaults manifest to "box.pp." Instead, it
    is now "default.pp"
  - All Vagrant commands that take a VM name in a Multi-VM environment
    can now be given a regular expression. If the name starts and ends with a "/"
    then it is assumed to be a regular expression. [GH-573]
  - Added a "--plain" flag to `vagrant ssh` which will cause Vagrant to not
    perform any authentication. It will simply `ssh` into the proper IP and
    port of the virtual machine.
  - If a shared folder now has a `:create` flag set to `true`, the path on the
    host will be created if it doesn't exist.
  - Added `--force` flag to `box add`, which will overwrite any existing boxes
    if they exist. [GH-631]
  - Added `--provision-with` to `up` which configures what provisioners run,
    by shortcut. [GH-367]
  - Arbitrary mount options can be passed with `:extra` to any shared
    folders. [GH-551]
  - Options passed after a `--` to `vagrant ssh` are now passed directly to
    `ssh`. [GH-554]
  - Ubuntu guests will now emit a `vagrant-mounted` upstart event after shared
    folders are mounted.
  - `attempts` is a new option on chef client and chef solo provisioners. This
    will run the provisioner multiple times until erroring about failing
    convergence. [GH-282]
  - Removed Thor as a dependency for the command line interfaces. This resulted
    in general speed increases across all command line commands.
  - Linux uses `shutdown -h` instead of `halt` to hopefully more consistently
    power off the system. [GH-575]
  - Tweaks to SSH to hopefully be more reliable in coming up.
  - Helpful error message when SCP is unavailable in the guest. [GH-568]
  - Error message for improperly packaged box files. [GH-198]
  - Copy insecure private key to user-owned directory so even
    `sudo` installed Vagrant installations work. [GH-580]
  - Provisioner stdout/stderr is now color coded based on stdout/stderr.
    stdout is green, stderr is red. [GH-595]
  - Chef solo now prompts users to run a `reload` if shared folders
    are not found on the VM. [GH-253]
  - "--no-provision" once again works for certain commands. [GH-591]
  - Resuming a VM from a saved state will show an error message if there
    would be port collisions. [GH-602]
  - `vagrant ssh -c` will now exit with the same exit code as the command
    run. [GH-598]
  - `vagrant ssh -c` will now send stderr to stderr and stdout to stdout
    on the host machine, instead of all output to stdout.
  - `vagrant box add` path now accepts unexpanded shell paths such as
    `~/foo` and will properly expand them. [GH-633]
  - Vagrant can now be interrupted during the "importing" step.
  - NFS exports will no longer be cleared when an expected error occurs. [GH-577]

## 0.8.10 (December 10, 2011)

  - Revert the SSH tweaks made in 0.8.8. It affected stability

## 0.8.8 (December 1, 2011)

  - Mount shared folders shortest to longest to avoid mounting
    subfolders first. [GH-525]
  - Support for basic HTTP auth in the URL for boxes.
  - Solaris support for host only networks. [GH-533]
  - `vagrant init` respects `Vagrant::Environment` cwd. [GH-528]
  - `vagrant` commands will not output color when stdout is
    not a TTY.
  - Fix issue where `box_url` set with multiple VMs could cause issues. [GH-564]
  - Chef provisioners no longer depend on a "v-root" share being
    available. [GH-556]
  - NFS should work for FreeBSD hosts now. [GH-510]
  - SSH executed methods respect `config.ssh.max_tries`. [GH-508]
  - `vagrant box add` now respects the "no_proxy" environmental variable.
    [GH-502]
  - Tweaks that should make "Waiting for VM to boot" slightly more
    reliable.
  - Add comments to Vagrantfile to make it detected as Ruby file for
    `vi` and `emacs`. [GH-515]
  - More correct guest addition version checking. [GH-514]
  - Chef solo support on Windows is improved. [GH-542]
  - Put encrypted data bag secret into `/tmp` by default so that
    permissions are almost certainly guaranteed. [GH-512]

## 0.8.7 (September 13, 2011)

  - Fix regression with remote paths from chef-solo. [GH-431]
  - Fix issue where Vagrant crashes if `.vagrant` file becomes invalid. [GH-496]
  - Issue a warning instead of an error for attempting to forward a port
    <= 1024. [GH-487]

## 0.8.6 (August 28, 2011)

  - Fix issue with download progress not properly clearing the line. [GH-476]
  - NFS should work properly on Fedora. [GH-450]
  - Arguments can be specified to the `shell` provisioner via the `args` option. [GH-475]
  - Vagrant behaves much better when there are "inaccessible" VMs. [GH-453]

## 0.8.5 (August 15, 2011)

Note: 0.8.3 and 0.8.4 was yanked due to RubyGems encoding issue.

 - Fix SSH `exec!` to inherit proper `$PATH`. [GH-426]
 - Chef client now accepts an empty (`nil`) run list again. [GH-429]
 - Fix incorrect error message when running `provision` on halted VM. [GH-447]
 - Checking guest addition versions now ignores OSE. [GH-438]
 - Chef solo from a remote URL fixed. [GH-431]
 - Arch linux support: host only networks and changing the host name. [GH-439] [GH-448]
 - Chef solo `roles_path` and `data_bags_path` can only be single paths. [GH-446]
 - Fix `virtualbox_not_detected` error message to require 4.1.x. [GH-458]
 - Add shortname (`hostname -s`) for hostname setting on RHEL systems. [GH-456]
 - `vagrant ssh -c` output no longer has a prefix and respects newlines
   from the output. [GH-462]

## 0.8.2 (July 22, 2011)

  - Fix issue with SSH disconnects not reconnecting.
  - Fix chef solo simply not working with roles/data bags. [GH-425]
  - Multiple chef solo provisioners now work together.
  - Update Puppet provisioner so no deprecation warning is shown. [GH-421]
  - Removed error on "provisioner=" in config, as this has not existed
    for some time now.
  - Add better validation for networking.

## 0.8.1 (July 20, 2011)

  - Repush of 0.8.0 to fix a Ruby 1.9.2 RubyGems issue.

## 0.8.0 (July 20, 2011)

  - VirtualBox 4.1 support _only_. Previous versions of VirtualBox
    are supported by earlier versions of Vagrant.
  - Performance optimizations in `virtualbox` gem. Huge speed gains.
  - `:chef_server` provisioner is now `:chef_client`. [GH-359]
  - SSH connection is now cached after first access internally,
    speeding up `vagrant up`, `reload`, etc. quite a bit.
  - Actions which modify the VM now occur much more quickly,
    greatly speeding up `vagrant up`, `reload`, etc.
  - SUSE host only networking support. [GH-369]
  - Show nice error message for invalid HTTP responses for HTTP
    downloader. [GH-403]
  - New `:inline` option for shell provisioner to provide inline
    scripts as a string. [GH-395]
  - Host only network now properly works on multiple adapters. [GH-365]
  - Can now specify owner/group for regular shared folders. [GH-350]
  - `ssh_config` host name will use VM name if given. [GH-332]
  - `ssh` `-e` flag changed to `-c` to align with `ssh` standard
    behavior. [GH-323]
  - Forward agent and forward X11 settings properly appear in
    `ssh_config` output. [GH-105]
  - Chef JSON can now be set with `chef.json =` instead of the old
    `merge` technique. [GH-314]
  - Provisioner configuration is no longer cleared when the box
    needs to be downloaded during an `up`. [GH-308]
  - Multiple Chef provisioners no longer overwrite cookbook folders. [GH-407]
  - `package` won't delete previously existing file. [GH-408]
  - Vagrantfile can be lowercase now. [GH-399]
  - Only one copy of Vagrant may be running at any given time. [GH-364]
  - Default home directory for Vagrant moved to `~/.vagrant.d` [GH-333]
  - Specify a `forwarded_port_destination` for SSH configuration and
    SSH port searching will fall back to that if it can't find any
    other port. [GH-375]

## 0.7.8 (July 19, 2011)

  - Make sure VirtualBox version check verifies that it is 4.0.x.

## 0.7.7 (July 12, 2011)

  - Fix crashing bug with Psych and Ruby 1.9.2. [GH-411]

## 0.7.6 (July 2, 2011)

  - Run Chef commands in a single command. [GH-390]
  - Add `nfs` option for Chef to mount Chef folders via NFS. [GH-378]
  - Add translation for `aborted` state in VM. [GH-371]
  - Use full paths with the Chef provisioner so that restart cookbook will
    work. [GH-374]
  - Add "--no-color" as an argument and no colorized output will be used. [GH-379]
  - Added DEVICE option to the RedHat host only networking entry, which allows
    host only networking to work even if the VM has multiple NICs. [GH-382]
  - Touch the network configuration file for RedHat so that the `sed` works
    with host only networking. [GH-381]
  - Load prerelease versions of plugins if available.
  - Do not load a plugin if it depends on an invalid version of Vagrant.
  - Encrypted data bag support in Chef server provisioner. [GH-398]
  - Use the `-H` flag to set the proper home directory for `sudo`. [GH-370]

## 0.7.5 (May 16, 2011)

  - `config.ssh.port` can be specified and takes highest precedence if specified.
    Otherwise, Vagrant will still attempt to auto-detect the port. [GH-363]
  - Get rid of RubyGems deprecations introduced with RubyGems 1.8.x
  - Search in pre-release gems for plugins as well as release gems.
  - Support for Chef-solo `data_bags_path` [GH-362]
  - Can specify path to Chef binary using `binary_path` [GH-342]
  - Can specify additional environment data for Chef using `binary_env` [GH-342]

## 0.7.4 (May 12, 2011)

  - Chef environments support (for Chef 0.10) [GH-358]
  - Suppress the "added to known hosts" message for SSH [GH-354]
  - Ruby 1.8.6 support [GH-352]
  - Chef proxy settings now work for chef server [GH-335]

## 0.7.3 (April 19, 2011)

  - Retry all SSH on Net::SSH::Disconnect in case SSH is just restarting. [GH-313]
  - Add NFS shared folder support for Arch linux. [GH-346]
  - Fix issue with unknown terminal type output for sudo commands.
  - Forwarded port protocol can now be set as UDP. [GH-311]
  - Chef server file cache path and file backup path can be configured. [GH-310]
  - Setting hostname should work on Debian now. [GH-307]

## 0.7.2 (February 8, 2011)

  - Update JSON dependency to 1.5.1, which works with Ruby 1.9 on
    Windows.
  - Fix sudo issues on sudo < 1.7.0 (again).
  - Fix race condition in SSH, which specifically manifested itself in
    the chef server provisioner. [GH-295]
  - Change sudo shell to use `bash` (configurable). [GH-301]
  - Can now set mac address of host only network. [GH-294]
  - NFS shared folders with spaces now work properly. [GH-293]
  - Failed SSH commands now show output in error message. [GH-285]

## 0.7.1 (January 28, 2011)

  - Change error output with references to VirtualBox 3.2 to 4.0.
  - Internal SSH through net-ssh now uses `IdentitiesOnly` thanks to
    upstream net-ssh fix.
  - Fix issue causing warnings to show with `forwardx11` enabled for SSH. [GH-279]
  - FreeBSD support for host only networks, NFS, halting, etc. [GH-275]
  - Make SSH commands which use sudo compatible with sudo < 1.7.0. [GH-278]
  - Fix broken puppet server provisioner which called a nonexistent
    method.
  - Default SSH host changed from `localhost` to `127.0.0.1` since
    `localhost` is not always loopback.
  - New `shell` provisioner which simply uploads and executes a script as
    root on the VM.
  - Gentoo host only networking no longer fails if already setup. [GH-286]
  - Set the host name of your guest OS with `config.vm.host_name` [GH-273]
  - `vagrant ssh-config` now outputs the configured `config.ssh.host`

## 0.7.0 (January 19, 2011)

  - VirtualBox 4.0 support. Support for VirtualBox 3.2 is _dropped_, since
    the API is so different. Stay with the 0.6.x series if you have VirtualBox
    3.2.x.
  - Puppet server provisioner. [GH-262]
  - Use numeric uid/gid in mounting shared folders to increase portability. [GH-252]
  - HTTP downloading follows redirects. [GH-163]
  - Downloaders have clearer output to note what they're doing.
  - Shared folders with no guest path are not automounted. [GH-184]
  - Boxes downloaded during `vagrant up` reload the Vagrantfile config, which
    fixes a problem with box settings not being properly loaded. [GH-231]
  - `config.ssh.forward_x11` to enable the ForwardX11 SSH option. [GH-255]
  - Vagrant source now has a `contrib` directory where contributions of miscellaneous
    addons for Vagrant will be added.
  - Vagrantfiles are now loaded only once (instead of 4+ times) [GH-238]
  - Ability to move home vagrant dir (~/.vagrant) by setting VAGRANT_HOME
    environmental variable.
  - Removed check and error for the "OSE" version of VirtualBox, since with
    VirtualBox 4 this distinction no longer exists.
  - Ability to specify proxy settings for chef. [GH-169]
  - Helpful error message shown if NFS mounting fails. [GH-135]
  - Gentoo guests now support host only networks. [GH-240]
  - RedHat (CentOS included) guests now support host only networks. [GH-260]
  - New Vagrantfile syntax for enabling and configuring provisioners. This
    change is not backwards compatible. [GH-265]
  - Provisioners are now RVM-friendly, meaning if you installed chef or puppet
    with an RVM managed Ruby, Vagrant now finds then. [GH-254]
  - Changed the unused host only network destroy mechanism to check for
    uselessness after the VM is destroyed. This should result in more accurate
    checks.
  - Networks are no longer disabled upon halt/destroy. With the above
    change, its unnecessary.
  - Puppet supports `module_path` configuration to mount local modules directory
    as a shared folder and configure puppet with it. [GH-270]
  - `ssh-config` now outputs `127.0.0.1` as the host instead of `localhost`.

## 0.6.9 (December 21, 2010)

  - Puppet provisioner. [GH-223]
  - Solaris system configurable to use `sudo`.
  - Solaris system registered, so it can be set with `:solaris`.
  - `vagrant package` include can be a directory name, which will cause the
    contents to be recursively copied into the package. [GH-241]
  - Arbitrary options to puppet binary can be set with `config.puppet.options`. [GH-242]
  - BSD hosts use proper GNU sed syntax for clearing NFS shares. [GH-243]
  - Enumerate VMs in a multi-VM environment in order they were defined. [GH-244]
  - Check for VM boot changed to use `timeout` library, which works better with Windows.
  - Show special error if VirtualBox not detected on 64-bit Windows.
  - Show error to Windows users attempting to use host only networking since
    it doesn't work yet.

## 0.6.8 (November 30, 2010)

  - Network interfaces are now up/down in distinct commands instead of just
    restarting "networking." [GH-192]
  - Add missing translation for chef binary missing. [GH-203]
  - Fix default settings for Opscode platform and comments. [GH-213]
  - Blank client name for chef server now uses FQDN by default, instead of "client" [GH-214]
  - Run list can now be nil, which will cause it to sync with chef server (when
    chef server is enabled). [GH-214]
  - Multiple NFS folders now work on linux. [GH-215]
  - Add translation for state "stuck" which is very rare. [GH-218]
  - virtualbox gem dependency minimum raised to 0.7.6 to verify FFI < 1.0.0 is used.
  - Fix issue where box downloading from `vagrant up` didn't reload the box collection. [GH-229]

## 0.6.7 (November 3, 2010)

  - Added validation to verify that a box is specified.
  - Proper error message when box is not found for `config.vm.box`. [GH-195]
  - Fix output of `vagrant status` with multi-vm to be correct. [GH-196]

## 0.6.6 (October 14, 2010)

  - `vagrant status NAME` works once again. [GH-191]
  - Conditional validation of Vagrantfile so that some commands don't validate. [GH-188]
  - Fix "junk" output for ssh-config. [GH-189]
  - Fix port collision handling with greater than two VMs. [GH-185]
  - Fix potential infinite loop with root path if bad CWD is given to environment.

## 0.6.5 (October 8, 2010)

  - Validations on base MAC address to avoid situation described in GH-166, GH-181
    from ever happening again.
  - Properly load sub-VM configuration on first-pass of config loading. Solves
    a LOT of problems with multi-VM. [GH-166] [GH-181]
  - Configuration now only validates on final Vagrantfile proc, so multi-VM
    validates correctly.
  - A nice error message is given if ".vagrant" is a directory and therefore
    can't be accessed. [GH-172]
  - Fix plugin loading in a Rails 2.3.x project. [GH-176]

## 0.6.4 (October 4, 2010)

  - Default VM name is now properly the parent folder of the working directory
    of the environment.
  - Added method to `TestHelpers` to assist with testing new downloaders.
  - `up --no-provision` works again. This disables provisioning during the
    boot process.
  - Action warden doesn't do recovery process on `SystemExit` exceptions,
    allowing the double ctrl-C to work properly again. [related to GH-166]
  - Initial Vagrantfile is now heavily commented with various available
    options. [GH-171]
  - Box add checks if a box already exists before the download. [GH-170]
  - NFS no longer attempts to clean exports file if VM is not created,
    which was causing a stack trace during recovery. [related to GH-166]
  - Basic validation added for Chef configuration (both solo and server).
  - Top config class is now available in all `Vagrant::Config::Base`
    subclasses, which is useful for config validation.
  - Subcommand help shows proper full command in task listing. [GH-168]
  - SSH gives error message if `ssh` binary is not found. [GH-161]
  - SSH gives proper error message if VM is not running. [GH-167]
  - Fix some issues with undefined constants in command errors.

## 0.6.1, 0.6.2, 0.6.3 (September 27, 2010)

A lot of quick releases which all were to fix issues with Ruby 1.8.7
compatibility.

## 0.6.0 (September 27, 2010)

  - VM name now defaults to the name of the containing folder, plus a timestamp.
    This should make it easier to identify VMs in the VirtualBox GUI.
  - Exposed Vagrant test helpers in `Vagrant::TestHelpers` for plugins to easily
    test themselves against Vagrant environments.
  - **Plugins** have landed. Plugins are simply gems which have a `vagrant_init.rb`
    file somewhere in their load path. Please read the documentation on
    vagrantup.com before attempting to create a plugin (which is very easy)
    for more information on how it all works and also some guidelines.
  - `vagrant package` now takes a `--vagrantfile` option to specify a
    Vagrantfile to package. The `--include` approach for including a Vagrantfile
    no longer works (previously built boxes will continue to work).
  - `vagrant package` has new logic with regards to the `--include` option
    depending on if the file path is relative or absolute (they can be
    intermixed):
      * _Relative_ paths are copied directly into the box, preserving
        their path. So `--include lib/foo` would be in the box as "lib/foo"
      * _Absolute_ paths are simply copied files into the root of the
        box. So `--include /lib/foo` would be in the box as "foo"
  - "vagrant_main" is no longer the default run list. Instead, chef
    run list starts empty. It is up to you to specify all recipes in
    the Vagrantfile now.
  - Fixed various issues with certain action middleware not working if
    the VM was not created.
  - SSH connection is retried 5 times if there is a connection refused.
    Related to GH-140.
  - If `http_proxy` environmental variable is set, it will be used as the proxy
    box adding via http.
  - Remove `config.ssh.password`. It hasn't been used for a few versions
    now and was only kept around to avoid exceptions in Vagrantfiles.
  - Configuration is now validated so improper input can be found in
    Vagrantfiles.
  - Fixed issue with not detecting Vagrantfile at root directory ("/").
  - Vagrant now gives a nice error message if there is a syntax error
    in any Vagrantfile. [GH-154]
  - The format of the ".vagrant" file which stores persisted VMs has
    changed. This is **backwards incompatible**. Will provide an upgrade
    utility prior to 0.6 launch.
  - Every [expected] Vagrant error now exits with a clean error message
    and a unique exit status, and raises a unique exception (if you're
    scripting Vagrant).
  - Added I18n gem dependency for pulling strings into clean YML files.
    Vagrant is now localizable as a side effect! Translations welcome.
  - Fixed issue with "Waiting for cleanup" message appearing twice in
    some cases. [GH-145]
  - Converted CLI to use Thor. As a tradeoff, there are some backwards
    incompatibilities:
      * `vagrant package` - The `--include` flag now separates filenames
        by spaces, instead of by commas. e.g. `vagrant package --include x y z`
      * `vagrant ssh` - If you specify a command to execute using the `--execute`
        flag, you may now only specify one command (before you were able to
        specify an arbitrary amount). e.g. `vagrant ssh -e "echo hello"`
      * `vagrant ssh-config` has become `vagrant ssh_config` due to a limitation
        in Thor.

## 0.5.4 (September 7, 2010)

  - Fix issue with the "exec failed" by running on Tiger as well.
  - Give an error when downloading a box which already exists prior
    to actually downloading the box.

## 0.5.3 (August 23, 2010)

  - Add erubis as a dependency since its rendering of `erb` is sane.
  - Fixed poorly formatted Vagrantfile after `vagrant init`. [GH-142]
  - Fixed NFS not working properly with multiple NFS folders.
  - Fixed chef solo provision to work on Windows. It was expanding a linux
    path which prepended a drive letter onto it.

## 0.5.2 (August 3, 2010)

  - `vagrant up` can be used as a way to resume the VM as well (same as
    `vagrant resume`). [GH-134]
  - Sudo uses "-E" flag to preserve environment for chef provisioners.
    This fixes issues with CentOS. [GH-133]
  - Added "IdentitiesOnly yes" to options when `vagrant ssh` is run to
    avoid "Too Many Authentication Failures" error. [GH-131]
  - Fix regression with `package` not working. [GH-132]
  - Added ability to specify box url in `init`, which populates the
    Vagrantfile with the proper `config.vm.box_url`.

## 0.5.1 (July 31, 2010)

  - Allow specifying cookbook paths which exist only on the VM in `config.chef.cookbooks_path`.
    This is used for specifying cookbook paths when `config.chef.recipe_url` is used. [GH-130]
    See updated chef solo documentation for more information on this.
  - No longer show "Disabling host only networks..." if no host only networks
    are destroyed. Quiets `destroy`, `halt`, etc output a bit.
  - Updated getting started guide to be more up to date and generic. [GH-125]
  - Fixed error with doing a `vagrant up` when no Vagrantfile existed. [GH-128]
  - Fixed NFS erroring when NFS wasn't even enabled if `/etc/exports` doesn't
    exist. [GH-126]
  - Fixed `vagrant resume` to properly resume a suspended VM. [GH-122]
  - Fixed `halt`, `destroy`, `reload` to where they failed if the VM was
    in a saved state. [GH-123]
  - Added `config.chef.recipe_url` which allows you to specify a URL to
    a gzipped tar file for chef solo to download cookbooks. See the
    [chef-solo docs](https://docs.chef.io/chef_solo.html) for more information.
    [GH-121]
  - Added `vagrant box repackage` which repackages boxes which have
    been added. This is useful in case you want to redistribute a base
    box you have but may have lost the actual "box" file. [GH-120]

## Previous

The changelog began with version 0.5.1 so any changes prior to that
can be seen by checking the tagged releases and reading git commit
messages.
