add_executable(example example.cpp)
target_link_libraries(example PRIVATE {{ cookiecutter.project_name }})
