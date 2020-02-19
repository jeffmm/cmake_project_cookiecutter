
include_directories(../extern/catch2)

add_executable(test_{{ cookiecutter.repo_name }} test_{{ cookiecutter.repo_name }}.cpp)

target_link_libraries(test_{{ cookiecutter.repo_name }} PRIVATE {{ cookiecutter.project_name }})

add_test(NAME {{ cookiecutter.repo_name }}_test COMMAND test_{{ cookiecutter.repo_name }})
