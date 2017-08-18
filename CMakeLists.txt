PROJECT(orb)
cmake_minimum_required(VERSION 3.8)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -lrt -pthread")

#set(SRC_LIST ../vfile.cpp ../vdev.cpp ../uORBCommon.hpp ../device_posix.cpp ../s.cpp ../vdev.cpp)

#ADD_EXECUTABLE(uorbs ${SRC_LIST}})
MESSAGE(STATUS, ${CMAKE_SOURCE_DIR})

aux_source_directory(./ DIR_SRCS)
#aux_source_directory(. CMAKE_SOURCE_DIR)

add_executable(orb ${DIR_SRCS})
#add_executable(vdev ${CMAKE_SOURCE_DIR})

