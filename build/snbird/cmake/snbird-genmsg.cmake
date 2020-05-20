# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "snbird: 1 messages, 0 services")

set(MSG_I_FLAGS "-Isnbird:/home/pi/MyLocalGit/snowbird/src/snbird/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(snbird_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg" NAME_WE)
add_custom_target(_snbird_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snbird" "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(snbird
  "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snbird
)

### Generating Services

### Generating Module File
_generate_module_cpp(snbird
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snbird
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(snbird_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(snbird_generate_messages snbird_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg" NAME_WE)
add_dependencies(snbird_generate_messages_cpp _snbird_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(snbird_gencpp)
add_dependencies(snbird_gencpp snbird_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS snbird_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(snbird
  "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snbird
)

### Generating Services

### Generating Module File
_generate_module_eus(snbird
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snbird
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(snbird_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(snbird_generate_messages snbird_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg" NAME_WE)
add_dependencies(snbird_generate_messages_eus _snbird_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(snbird_geneus)
add_dependencies(snbird_geneus snbird_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS snbird_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(snbird
  "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snbird
)

### Generating Services

### Generating Module File
_generate_module_lisp(snbird
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snbird
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(snbird_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(snbird_generate_messages snbird_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg" NAME_WE)
add_dependencies(snbird_generate_messages_lisp _snbird_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(snbird_genlisp)
add_dependencies(snbird_genlisp snbird_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS snbird_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(snbird
  "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snbird
)

### Generating Services

### Generating Module File
_generate_module_nodejs(snbird
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snbird
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(snbird_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(snbird_generate_messages snbird_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg" NAME_WE)
add_dependencies(snbird_generate_messages_nodejs _snbird_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(snbird_gennodejs)
add_dependencies(snbird_gennodejs snbird_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS snbird_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(snbird
  "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snbird
)

### Generating Services

### Generating Module File
_generate_module_py(snbird
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snbird
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(snbird_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(snbird_generate_messages snbird_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/MyLocalGit/snowbird/src/snbird/msg/Whls_vel.msg" NAME_WE)
add_dependencies(snbird_generate_messages_py _snbird_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(snbird_genpy)
add_dependencies(snbird_genpy snbird_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS snbird_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snbird)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snbird
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(snbird_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snbird)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snbird
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(snbird_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snbird)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snbird
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(snbird_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snbird)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snbird
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(snbird_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snbird)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snbird\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snbird
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(snbird_generate_messages_py std_msgs_generate_messages_py)
endif()
