file(GLOB HEADERS CONFIGURE_DEPENDS "${{{ cookiecutter.project_name }}_SOURCE_DIR}/include/{{ cookiecutter.repo_name }}/*.hpp")

file(GLOB SOURCES CONFIGURE_DEPENDS "*.cpp")

# Make a static or dynamic library depending on user settings
add_library({{cookie_cutter.project_name }} ${SOURCES} ${HEADERS})

target_include_directories({{cookie_cutter.project_name }} PUBLIC ../include)
