#
# Generated file, do not edit.
#

list(APPEND FLUTTER_PLUGIN_LIST
  audioplayers_windows
  file_selector_windows
  flutter_acrylic
  hotkey_manager_windows
  irondash_engine_context
  keypress_simulator_windows
  pasteboard
  permission_handler_windows
  protocol_handler_windows
  record_windows
  screen_retriever
  super_native_extensions
  system_theme
  tray_manager
  url_launcher_windows
  window_manager
  windows_single_instance
)

list(APPEND FLUTTER_FFI_PLUGIN_LIST
  flutter_gpt_tokenizer
)

set(PLUGIN_BUNDLED_LIBRARIES)

foreach(plugin ${FLUTTER_PLUGIN_LIST})
  add_subdirectory(flutter/ephemeral/.plugin_symlinks/${plugin}/windows plugins/${plugin})
  target_link_libraries(${BINARY_NAME} PRIVATE ${plugin}_plugin)
  list(APPEND PLUGIN_BUNDLED_LIBRARIES $<TARGET_FILE:${plugin}_plugin>)
  list(APPEND PLUGIN_BUNDLED_LIBRARIES ${${plugin}_bundled_libraries})
endforeach(plugin)

foreach(ffi_plugin ${FLUTTER_FFI_PLUGIN_LIST})
  add_subdirectory(flutter/ephemeral/.plugin_symlinks/${ffi_plugin}/windows plugins/${ffi_plugin})
  list(APPEND PLUGIN_BUNDLED_LIBRARIES ${${ffi_plugin}_bundled_libraries})
endforeach(ffi_plugin)
