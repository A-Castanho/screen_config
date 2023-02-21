#include "include/screen_config/screen_config_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "screen_config_plugin.h"

void ScreenConfigPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  screen_config::ScreenConfigPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
