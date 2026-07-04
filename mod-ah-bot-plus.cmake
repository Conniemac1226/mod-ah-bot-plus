# Install the pricing CSV overlay with the module so the live config can
# reference a stable relative path under the server config directory.
set(MODULE_ROOT_DIR "${CMAKE_CURRENT_LIST_DIR}")

if(UNIX)
  install(FILES "${MODULE_ROOT_DIR}/conf/mod_ahbot_pricing.csv" DESTINATION "${CONF_DIR}/modules")
elseif(WIN32)
  install(FILES "${MODULE_ROOT_DIR}/conf/mod_ahbot_pricing.csv" DESTINATION "${CMAKE_INSTALL_PREFIX}/configs/modules")
endif()
