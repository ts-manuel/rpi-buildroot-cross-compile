# Buildroot Cross Compilation Example for the Raspberry Pi


<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#buildroot-tips">Buildroot Tips</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project
This project shows how to cross compile an application for a custom linux image built with buildroot.


<!-- GETTING STARTED -->
## Getting Started
### Getting the code
    git clone --recursive https://github.com/ts-manuel/rpi-buildroot-cross-compile.git

### Compinig
    ./setup.sh
    ./build.sh


<!-- BUILDROOT TIPS -->
## Buildroot Tips

### Buildroot Folder Structure
| Folder                     | Description                                |
| -------------------------- | ------------------------------------------ |
| buildroot/output/host/     | where host tools are copied after building |
| buildroot/output/build/    | where pakages are downloaded and builded   |
| buildroot/output/images/   | where images are copied after building     |

### Usefull Comands

    make list-defconfigs    # Lists all the available configurations
    make list-defconfigs    # Writes the defconfig file ignoring defaults