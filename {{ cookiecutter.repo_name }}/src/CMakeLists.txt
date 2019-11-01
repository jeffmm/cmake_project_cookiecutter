# Find all headers in the project include folder
file(GLOB HEADERS CONFIGURE_DEPENDS "${PROJECT_SOURCE_DIR}/include/{{ cookiecutter.repo_name }}/*.hpp")

# Make a static library (tradeoff of memory for better performance)
add_library({{ cookiecutter.project_name }} STATIC lib.cpp ${HEADERS})

# Add an alias so the target can be used while building
add_library({{ cookiecutter.project_name }}::{{ cookiecutter.project_name }} ALIAS {{ cookiecutter.project_name }})

# Set the include directory for builds (tests, examples, etc) and for clients
target_include_directories({{ cookiecutter.project_name }} PUBLIC
    $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>)

# Associate the include files with the target, so they will be installed
set_target_properties({{ cookiecutter.project_name }} PROPERTIES PUBLIC_HEADER "${HEADERS}")

# Set install targets and destinations
install(TARGETS {{ cookiecutter.project_name }}
    EXPORT {{ cookiecutter.project_name }}Targets
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    PUBLIC_HEADER DESTINATION include/{{ cookiecutter.repo_name }})

# Export additional install files (for clients using CMake)
install(EXPORT {{ cookiecutter.project_name }}Targets
    NAMESPACE {{ cookiecutter.project_name }}::
    FILE {{ cookiecutter.project_name }}Config.cmake
    DESTINATION lib/cmake/{{ cookiecutter.project_name }})

