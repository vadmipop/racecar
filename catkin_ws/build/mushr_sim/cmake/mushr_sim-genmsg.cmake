# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mushr_sim: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mushr_sim_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv" NAME_WE)
add_custom_target(_mushr_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mushr_sim" "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(mushr_sim
  "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_sim
)

### Generating Module File
_generate_module_cpp(mushr_sim
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_sim
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mushr_sim_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mushr_sim_generate_messages mushr_sim_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv" NAME_WE)
add_dependencies(mushr_sim_generate_messages_cpp _mushr_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_sim_gencpp)
add_dependencies(mushr_sim_gencpp mushr_sim_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_sim_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(mushr_sim
  "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_sim
)

### Generating Module File
_generate_module_eus(mushr_sim
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_sim
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mushr_sim_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mushr_sim_generate_messages mushr_sim_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv" NAME_WE)
add_dependencies(mushr_sim_generate_messages_eus _mushr_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_sim_geneus)
add_dependencies(mushr_sim_geneus mushr_sim_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_sim_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(mushr_sim
  "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_sim
)

### Generating Module File
_generate_module_lisp(mushr_sim
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_sim
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mushr_sim_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mushr_sim_generate_messages mushr_sim_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv" NAME_WE)
add_dependencies(mushr_sim_generate_messages_lisp _mushr_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_sim_genlisp)
add_dependencies(mushr_sim_genlisp mushr_sim_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_sim_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(mushr_sim
  "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_sim
)

### Generating Module File
_generate_module_nodejs(mushr_sim
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_sim
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mushr_sim_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mushr_sim_generate_messages mushr_sim_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv" NAME_WE)
add_dependencies(mushr_sim_generate_messages_nodejs _mushr_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_sim_gennodejs)
add_dependencies(mushr_sim_gennodejs mushr_sim_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_sim_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(mushr_sim
  "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_sim
)

### Generating Module File
_generate_module_py(mushr_sim
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_sim
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mushr_sim_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mushr_sim_generate_messages mushr_sim_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/mushr/mushr_sim/srv/CarPose.srv" NAME_WE)
add_dependencies(mushr_sim_generate_messages_py _mushr_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_sim_genpy)
add_dependencies(mushr_sim_genpy mushr_sim_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_sim_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_sim
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mushr_sim_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_sim
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mushr_sim_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_sim
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mushr_sim_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_sim
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mushr_sim_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_sim)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_sim\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_sim
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_sim")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_sim
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mushr_sim_generate_messages_py std_msgs_generate_messages_py)
endif()
