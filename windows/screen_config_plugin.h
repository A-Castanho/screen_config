#ifndef FLUTTER_PLUGIN_SCREEN_CONFIG_PLUGIN_H_
#define FLUTTER_PLUGIN_SCREEN_CONFIG_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace screen_config {

class ScreenConfigPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ScreenConfigPlugin();

  virtual ~ScreenConfigPlugin();

  // Disallow copy and assign.
  ScreenConfigPlugin(const ScreenConfigPlugin&) = delete;
  ScreenConfigPlugin& operator=(const ScreenConfigPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace screen_config

#endif  // FLUTTER_PLUGIN_SCREEN_CONFIG_PLUGIN_H_
