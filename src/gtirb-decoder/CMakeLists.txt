set(DATALOG_DECODER_TARGETS
    core/AuxDataLoader.cpp
    core/DataLoader.cpp
    core/EdgesLoader.cpp
    core/InstructionLoader.cpp
    core/ModuleLoader.cpp
    core/SectionLoader.cpp
    core/SymbolLoader.cpp
    core/SymbolicExpressionLoader.cpp
    arch/X64Loader.cpp
    arch/Arm32Loader.cpp
    arch/X86Loader.cpp
    arch/Arm64Loader.cpp
    arch/Mips32Loader.cpp
    format/ElfLoader.cpp
    format/PeLoader.cpp
    format/RawLoader.cpp)

add_library(gtirb_decoder STATIC Relations.cpp DatalogIO.cpp
                                 ${DATALOG_DECODER_TARGETS})

target_link_libraries(gtirb_decoder gtirb gtirb_pprinter ${CAPSTONE}
                      ${ehp_LIBRARIES})

target_compile_definitions(gtirb_decoder PRIVATE __EMBEDDED_SOUFFLE__)
target_compile_definitions(gtirb_decoder PRIVATE RAM_DOMAIN_SIZE=64)
target_compile_options(gtirb_decoder PRIVATE ${OPENMP_FLAGS})

if(DDISASM_SOUFFLE_PROFILING)
  target_compile_definitions(gtirb_decoder PRIVATE DDISASM_SOUFFLE_PROFILING)
endif()

if(CAPSTONE_INCLUDE_DIR)
  target_include_directories(gtirb_decoder PRIVATE ${CAPSTONE_INCLUDE_DIR})
endif()
if(ehp_INCLUDE_DIR)
  target_include_directories(gtirb_decoder PRIVATE ${ehp_INCLUDE_DIR})
endif()
if(SOUFFLE_INCLUDE_DIR)
  target_include_directories(gtirb_decoder SYSTEM
                             PRIVATE ${SOUFFLE_INCLUDE_DIR})
endif()

if(${CMAKE_CXX_COMPILER_ID} STREQUAL MSVC)
  target_compile_definitions(gtirb_decoder PRIVATE _CRT_SECURE_NO_WARNINGS)
  target_compile_definitions(gtirb_decoder PRIVATE _CRT_NONSTDC_NO_WARNINGS)

  set_common_msvc_options(gtirb_decoder)
endif()
