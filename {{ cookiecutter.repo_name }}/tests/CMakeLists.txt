include_directories(catch2)

add_executable(test_{{ cookiecutter.repo_name }} test_{{ cookiecutter.repo_name }}.cpp)

# Should be linked to the take_two library, as well as the Catch2 testing library
target_link_libraries(test_{{ cookiecutter.repo_name }} PRIVATE {{ cookiecutter.project_name }} Catch2::Catch2)

add_test(NAME {{ cookiecutter.repo_name }}_test COMMAND test_{{ cookiecutter.repo_name }})
