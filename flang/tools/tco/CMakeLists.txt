set(LLVM_LINK_COMPONENTS
  AllTargetsAsmParsers
  AllTargetsCodeGens
  AllTargetsDescs
  AllTargetsInfos
)
llvm_map_components_to_libnames(llvm_libs ${LLVM_LINK_COMPONENTS})

add_flang_tool(tco tco.cpp)
llvm_update_compile_flags(tco)
get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
target_link_libraries(tco PRIVATE
  FIRCodeGen
  FIRDialect
  FIRSupport
  FIRTransforms
  FIRBuilder
  ${dialect_libs}
  MLIRIR
  MLIRLLVMIR
  MLIRLLVMToLLVMIRTranslation
  MLIRTargetLLVMIRExport
  MLIRPass
  MLIRStandardToLLVM
  MLIRTransforms
  MLIRAffineToStandard
  MLIRAnalysis
  MLIRSCFToStandard
  MLIRParser
  MLIRStandardToLLVM
  MLIRSupport
  MLIRVectorToLLVM
  ${llvm_libs}
)
