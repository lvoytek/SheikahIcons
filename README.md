# SheikahIcons
Icons with a Sheikah Slate look


## Install
Clone the repository then run the install command to add to the system. Requires git, make, and rsync to be installed

```bash
git clone https://github.com/lvoytek/SheikahIcons.git
cd SheikahIcons
make install
```

## Use Icons
Setup Sheikah icons with the following instructions based on your window manager

### Gnome
Run the following command:

```bash
gsettings set org.gnome.desktop.interface icon-theme "Sheikah"
```




Note that icons for applications downloaded as Snaps do not yet work. The snap package will be linked here when available.

```bash
for PLUG in $(snap connections | grep gtk-common-themes:icon-themes | awk '{print $2}'); do sudo snap connect ${PLUG} sheikah-icons:icon-themes; done
```
