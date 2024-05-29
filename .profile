export TERMINAL=/usr/bin/alacritty
# export QT_QPA_PLATFORMTHEME=qt5ct
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export XDG_PICTURES_DIR=$HOME/Pictures
export SWAY_INTERACTIVE_SCREENSHOT_SAVEDIR=$XDG_PICTURES_DIR/Screenshots
export HYPRSHOT_DIR=$XDG_PICTURES_DIR/Screenshots 
export SWAY_SCREENSHOT_DIR=$XDG_PICTURES_DIR/Screenshots 

alias discord='discord --ignore-gpu-blocklist --enable-features=UseOzonePlatform,VaapiVideoDecoder,WebRTCPipeWireCapturer --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy --no-sandbox --ozone-platform=wayland'
alias docker='podman'

# Make sure the obs-vkcapture Vulkan layer loads before MangoHUD and Steam Overlay so they aren't captured in OBS
export VK_LOADER_LAYERS_ENABLE=VK_LAYER_OBS_vkcapture_64,VK_LAYER_MANGOHUD_overlay,VK_LAYER_VALVE_steam_overlay_64
# Enable podman to work with docker-compose command
export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"

