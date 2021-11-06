# Specify the minimum version of CMake (3.1 is currently recommended by Qt)
cmake_minimum_required(VERSION 3.14)

# Specify project title, version, and languages
project(open-whiteboard VERSION 0.1 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

# To automatically run UIC when building (User Interface Compiler)
set(CMAKE_AUTOUIC ON)

# To automatically run MOC when building (Meta Object Compiler)
set(CMAKE_AUTOMOC ON)

# To automatically run RCC when building (Resource Compiler)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Specify OpenCV folder, and take care of dependencies and includes
# set(OpenCV_DIR "path_to_folder_of_OpenCVConfig.cmake_file")
set(OpenCV_DIR "/usr/lib/cmake/opencv4/OpenCVConfig.cmake")

# find_package(OpenCV REQUIRED)
find_package(OpenCV REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})
# include_directories("/usr/include/opencv4/opencv2")

# Take care of Qt dependencies
find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Gui Controls Dialogs Layouts REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Gui QuickControls2 QuickDialogs2 REQUIRED)

# Add required source, header, ui and resource files
set(PROJECT_SOURCES
        main.cpp
        whiteboard.h
        whiteboard.cpp
        qml.qrc
)

if(${QT_VERSION_MAJOR} GREATER_EQUAL 6)
    qt_add_executable(open-whiteboard
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES}
    )
# Define target properties for Android with Qt 6 as:
#    set_property(TARGET open-whiteboard APPEND PROPERTY QT_ANDROID_PACKAGE_SOURCE_DIR
#                 ${CMAKE_CURRENT_SOURCE_DIR}/android)
# For more information, see https://doc.qt.io/qt-6/qt-add-executable.html#target-creation
else()
    if(ANDROID)
        add_library(open-whiteboard SHARED
            ${PROJECT_SOURCES}
        )
# Define properties for Android with Qt 5 after find_package() calls as:
#    set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android")
    else()
        add_executable(open-whiteboard
          ${PROJECT_SOURCES}
        )
    endif()
endif()

target_compile_definitions(open-whiteboard
  PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)

# Link required libs
# target_link_libraries(${PROJECT_NAME} Qt5::Core Qt5::Gui Qt5::Widgets ${OpenCV_LIBS})
target_link_libraries(open-whiteboard
  PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick Qt${QT_VERSION_MAJOR}::Gui Qt${QT_VERSION_MAJOR}::QuickControls2 Qt${QT_VERSION_MAJOR}::QuickDialogs2 ${OpenCV_LIBS} -llept -ltesseract)
# target_link_libraries(open-whiteboard -llept -ltesseract)

set_target_properties(open-whiteboard PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
)

if(QT_VERSION_MAJOR EQUAL 6)
    qt_import_qml_plugins(open-whiteboard)
    qt_finalize_executable(open-whiteboard)
endif()
