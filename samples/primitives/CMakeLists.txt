cmake_minimum_required(VERSION 2.6)

project(Sample_Primitives)

set( HDRS
		../common/include/BaseApplication.h
		include/Primitives.h
	)

set( SRCS
		../common/src/BaseApplication.cpp
		src/Primitives.cpp
	)

include_directories( ${OIS_INCLUDE_DIRS}
	${OGRE_INCLUDE_DIRS}
	../common/include
	${CMAKE_CURRENT_SOURCE_DIR}/include
)

procedural_add_executable(Sample_Primitives WIN32 ${HDRS} ${SRCS})

set_target_properties(Sample_Primitives PROPERTIES DEBUG_POSTFIX _d)

target_link_libraries(Sample_Primitives ${OgreProcedural_LIBRARIES} ${OGRE_LIBRARIES} ${OIS_LIBRARIES})

if ((${OGRE_VERSION} VERSION_EQUAL "1.9.0") OR (${OGRE_VERSION} VERSION_GREATER "1.9.0"))
	include_directories(${OGRE_Overlay_INCLUDE_DIR})
	target_link_libraries(Sample_Primitives ${OGRE_Overlay_LIBRARIES})
endif()

procedural_create_vcproj_userfile(Sample_Primitives)