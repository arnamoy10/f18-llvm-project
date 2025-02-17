; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+d,+zfh,+experimental-v \
; RUN:     -verify-machineinstrs < %s | FileCheck %s
; RUN: llc -mtriple=riscv64 -mattr=+d,+zfh,+experimental-v \
; RUN:     -verify-machineinstrs < %s | FileCheck %s

declare void @llvm.vp.store.nxv1i8.p0nxv1i8(<vscale x 1 x i8>, <vscale x 1 x i8>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1i8(<vscale x 1 x i8> %val, <vscale x 1 x i8>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf8, ta, mu
; CHECK-NEXT:    vse8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1i8.p0nxv1i8(<vscale x 1 x i8> %val, <vscale x 1 x i8>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2i8.p0nxv2i8(<vscale x 2 x i8>, <vscale x 2 x i8>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2i8(<vscale x 2 x i8> %val, <vscale x 2 x i8>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf4, ta, mu
; CHECK-NEXT:    vse8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2i8.p0nxv2i8(<vscale x 2 x i8> %val, <vscale x 2 x i8>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv3i8.p0nxv3i8(<vscale x 3 x i8>, <vscale x 3 x i8>*, <vscale x 3 x i1>, i32)

define void @vpstore_nxv3i8(<vscale x 3 x i8> %val, <vscale x 3 x i8>* %ptr, <vscale x 3 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv3i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf2, ta, mu
; CHECK-NEXT:    vse8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv3i8.p0nxv3i8(<vscale x 3 x i8> %val, <vscale x 3 x i8>* %ptr, <vscale x 3 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4i8.p0nxv4i8(<vscale x 4 x i8>, <vscale x 4 x i8>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4i8(<vscale x 4 x i8> %val, <vscale x 4 x i8>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf2, ta, mu
; CHECK-NEXT:    vse8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4i8.p0nxv4i8(<vscale x 4 x i8> %val, <vscale x 4 x i8>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8i8.p0nxv8i8(<vscale x 8 x i8>, <vscale x 8 x i8>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8i8(<vscale x 8 x i8> %val, <vscale x 8 x i8>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, m1, ta, mu
; CHECK-NEXT:    vse8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8i8.p0nxv8i8(<vscale x 8 x i8> %val, <vscale x 8 x i8>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1i16.p0nxv1i16(<vscale x 1 x i16>, <vscale x 1 x i16>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1i16(<vscale x 1 x i16> %val, <vscale x 1 x i16>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf4, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1i16.p0nxv1i16(<vscale x 1 x i16> %val, <vscale x 1 x i16>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2i16.p0nxv2i16(<vscale x 2 x i16>, <vscale x 2 x i16>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2i16(<vscale x 2 x i16> %val, <vscale x 2 x i16>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf2, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2i16.p0nxv2i16(<vscale x 2 x i16> %val, <vscale x 2 x i16>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4i16.p0nxv4i16(<vscale x 4 x i16>, <vscale x 4 x i16>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4i16(<vscale x 4 x i16> %val, <vscale x 4 x i16>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, m1, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4i16.p0nxv4i16(<vscale x 4 x i16> %val, <vscale x 4 x i16>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8i16.p0nxv8i16(<vscale x 8 x i16>, <vscale x 8 x i16>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8i16(<vscale x 8 x i16> %val, <vscale x 8 x i16>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, m2, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8i16.p0nxv8i16(<vscale x 8 x i16> %val, <vscale x 8 x i16>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1i32.p0nxv1i32(<vscale x 1 x i32>, <vscale x 1 x i32>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1i32(<vscale x 1 x i32> %val, <vscale x 1 x i32>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, mf2, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1i32.p0nxv1i32(<vscale x 1 x i32> %val, <vscale x 1 x i32>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2i32.p0nxv2i32(<vscale x 2 x i32>, <vscale x 2 x i32>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2i32(<vscale x 2 x i32> %val, <vscale x 2 x i32>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m1, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2i32.p0nxv2i32(<vscale x 2 x i32> %val, <vscale x 2 x i32>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i32>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4i32(<vscale x 4 x i32> %val, <vscale x 4 x i32>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m2, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32> %val, <vscale x 4 x i32>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8i32.p0nxv8i32(<vscale x 8 x i32>, <vscale x 8 x i32>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8i32(<vscale x 8 x i32> %val, <vscale x 8 x i32>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m4, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8i32.p0nxv8i32(<vscale x 8 x i32> %val, <vscale x 8 x i32>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1i64.p0nxv1i64(<vscale x 1 x i64>, <vscale x 1 x i64>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1i64(<vscale x 1 x i64> %val, <vscale x 1 x i64>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m1, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1i64.p0nxv1i64(<vscale x 1 x i64> %val, <vscale x 1 x i64>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2i64.p0nxv2i64(<vscale x 2 x i64>, <vscale x 2 x i64>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2i64(<vscale x 2 x i64> %val, <vscale x 2 x i64>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m2, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2i64.p0nxv2i64(<vscale x 2 x i64> %val, <vscale x 2 x i64>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4i64.p0nxv4i64(<vscale x 4 x i64>, <vscale x 4 x i64>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4i64(<vscale x 4 x i64> %val, <vscale x 4 x i64>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m4, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4i64.p0nxv4i64(<vscale x 4 x i64> %val, <vscale x 4 x i64>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8i64.p0nxv8i64(<vscale x 8 x i64>, <vscale x 8 x i64>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8i64(<vscale x 8 x i64> %val, <vscale x 8 x i64>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m8, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8i64.p0nxv8i64(<vscale x 8 x i64> %val, <vscale x 8 x i64>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1f16.p0nxv1f16(<vscale x 1 x half>, <vscale x 1 x half>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1f16(<vscale x 1 x half> %val, <vscale x 1 x half>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf4, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1f16.p0nxv1f16(<vscale x 1 x half> %val, <vscale x 1 x half>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2f16.p0nxv2f16(<vscale x 2 x half>, <vscale x 2 x half>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2f16(<vscale x 2 x half> %val, <vscale x 2 x half>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf2, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2f16.p0nxv2f16(<vscale x 2 x half> %val, <vscale x 2 x half>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4f16.p0nxv4f16(<vscale x 4 x half>, <vscale x 4 x half>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4f16(<vscale x 4 x half> %val, <vscale x 4 x half>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, m1, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4f16.p0nxv4f16(<vscale x 4 x half> %val, <vscale x 4 x half>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8f16.p0nxv8f16(<vscale x 8 x half>, <vscale x 8 x half>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8f16(<vscale x 8 x half> %val, <vscale x 8 x half>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, m2, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8f16.p0nxv8f16(<vscale x 8 x half> %val, <vscale x 8 x half>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1f32.p0nxv1f32(<vscale x 1 x float>, <vscale x 1 x float>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1f32(<vscale x 1 x float> %val, <vscale x 1 x float>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, mf2, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1f32.p0nxv1f32(<vscale x 1 x float> %val, <vscale x 1 x float>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2f32.p0nxv2f32(<vscale x 2 x float>, <vscale x 2 x float>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2f32(<vscale x 2 x float> %val, <vscale x 2 x float>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m1, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2f32.p0nxv2f32(<vscale x 2 x float> %val, <vscale x 2 x float>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4f32.p0nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4f32(<vscale x 4 x float> %val, <vscale x 4 x float>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m2, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4f32.p0nxv4f32(<vscale x 4 x float> %val, <vscale x 4 x float>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8f32.p0nxv8f32(<vscale x 8 x float>, <vscale x 8 x float>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8f32(<vscale x 8 x float> %val, <vscale x 8 x float>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m4, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8f32.p0nxv8f32(<vscale x 8 x float> %val, <vscale x 8 x float>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1f64.p0nxv1f64(<vscale x 1 x double>, <vscale x 1 x double>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1f64(<vscale x 1 x double> %val, <vscale x 1 x double>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m1, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1f64.p0nxv1f64(<vscale x 1 x double> %val, <vscale x 1 x double>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2f64.p0nxv2f64(<vscale x 2 x double>, <vscale x 2 x double>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2f64(<vscale x 2 x double> %val, <vscale x 2 x double>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m2, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2f64.p0nxv2f64(<vscale x 2 x double> %val, <vscale x 2 x double>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4f64.p0nxv4f64(<vscale x 4 x double>, <vscale x 4 x double>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4f64(<vscale x 4 x double> %val, <vscale x 4 x double>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m4, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4f64.p0nxv4f64(<vscale x 4 x double> %val, <vscale x 4 x double>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8f64.p0nxv8f64(<vscale x 8 x double>, <vscale x 8 x double>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8f64(<vscale x 8 x double> %val, <vscale x 8 x double>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m8, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8f64.p0nxv8f64(<vscale x 8 x double> %val, <vscale x 8 x double>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

define void @vpstore_nxv1i8_allones_mask(<vscale x 1 x i8> %val, <vscale x 1 x i8>* %ptr, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1i8_allones_mask:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf8, ta, mu
; CHECK-NEXT:    vse8.v v8, (a0)
; CHECK-NEXT:    ret
  %a = insertelement <vscale x 1 x i1> undef, i1 true, i32 0
  %b = shufflevector <vscale x 1 x i1> %a, <vscale x 1 x i1> poison, <vscale x 1 x i32> zeroinitializer
  call void @llvm.vp.store.nxv1i8.p0nxv1i8(<vscale x 1 x i8> %val, <vscale x 1 x i8>* %ptr, <vscale x 1 x i1> %b, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv16f64.p0nxv16f64(<vscale x 16 x double>, <vscale x 16 x double>*, <vscale x 16 x i1>, i32)

define void @vpstore_nxv16f64(<vscale x 16 x double> %val, <vscale x 16 x double>* %ptr, <vscale x 16 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv16f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    csrr a2, vlenb
; CHECK-NEXT:    mv a3, a1
; CHECK-NEXT:    bltu a1, a2, .LBB30_2
; CHECK-NEXT:  # %bb.1:
; CHECK-NEXT:    mv a3, a2
; CHECK-NEXT:  .LBB30_2:
; CHECK-NEXT:    li a4, 0
; CHECK-NEXT:    vsetvli zero, a3, e64, m8, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    srli a5, a2, 3
; CHECK-NEXT:    vsetvli a3, zero, e8, mf4, ta, mu
; CHECK-NEXT:    sub a3, a1, a2
; CHECK-NEXT:    vslidedown.vx v0, v0, a5
; CHECK-NEXT:    bltu a1, a3, .LBB30_4
; CHECK-NEXT:  # %bb.3:
; CHECK-NEXT:    mv a4, a3
; CHECK-NEXT:  .LBB30_4:
; CHECK-NEXT:    slli a1, a2, 3
; CHECK-NEXT:    add a0, a0, a1
; CHECK-NEXT:    vsetvli zero, a4, e64, m8, ta, mu
; CHECK-NEXT:    vse64.v v16, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv16f64.p0nxv16f64(<vscale x 16 x double> %val, <vscale x 16 x double>* %ptr, <vscale x 16 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv17f64.p0nxv17f64(<vscale x 17 x double>, <vscale x 17 x double>*, <vscale x 17 x i1>, i32)

; Widen to nxv32f64 then split into 4 x nxv8f64, of which 1 is empty.

define void @vpstore_nxv17f64(<vscale x 17 x double> %val, <vscale x 17 x double>* %ptr, <vscale x 17 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv17f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    addi sp, sp, -16
; CHECK-NEXT:    .cfi_def_cfa_offset 16
; CHECK-NEXT:    csrr a3, vlenb
; CHECK-NEXT:    slli a3, a3, 3
; CHECK-NEXT:    sub sp, sp, a3
; CHECK-NEXT:    csrr a3, vlenb
; CHECK-NEXT:    slli a4, a3, 1
; CHECK-NEXT:    vmv1r.v v24, v0
; CHECK-NEXT:    addi a5, sp, 16
; CHECK-NEXT:    vs8r.v v16, (a5) # Unknown-size Folded Spill
; CHECK-NEXT:    mv a5, a2
; CHECK-NEXT:    bltu a2, a4, .LBB31_2
; CHECK-NEXT:  # %bb.1:
; CHECK-NEXT:    mv a5, a4
; CHECK-NEXT:  .LBB31_2:
; CHECK-NEXT:    mv a7, a5
; CHECK-NEXT:    bltu a5, a3, .LBB31_4
; CHECK-NEXT:  # %bb.3:
; CHECK-NEXT:    mv a7, a3
; CHECK-NEXT:  .LBB31_4:
; CHECK-NEXT:    li a6, 0
; CHECK-NEXT:    vl8re64.v v16, (a0)
; CHECK-NEXT:    vsetvli zero, a7, e64, m8, ta, mu
; CHECK-NEXT:    sub a0, a5, a3
; CHECK-NEXT:    vmv1r.v v0, v24
; CHECK-NEXT:    vse64.v v8, (a1), v0.t
; CHECK-NEXT:    bltu a5, a0, .LBB31_6
; CHECK-NEXT:  # %bb.5:
; CHECK-NEXT:    mv a6, a0
; CHECK-NEXT:  .LBB31_6:
; CHECK-NEXT:    li a0, 0
; CHECK-NEXT:    srli a5, a3, 3
; CHECK-NEXT:    vsetvli a7, zero, e8, mf4, ta, mu
; CHECK-NEXT:    vslidedown.vx v0, v24, a5
; CHECK-NEXT:    slli a5, a3, 3
; CHECK-NEXT:    add a5, a1, a5
; CHECK-NEXT:    vsetvli zero, a6, e64, m8, ta, mu
; CHECK-NEXT:    addi a6, sp, 16
; CHECK-NEXT:    vl8re8.v v8, (a6) # Unknown-size Folded Reload
; CHECK-NEXT:    vse64.v v8, (a5), v0.t
; CHECK-NEXT:    srli a5, a3, 2
; CHECK-NEXT:    sub a6, a2, a4
; CHECK-NEXT:    slli a4, a3, 4
; CHECK-NEXT:    bltu a2, a6, .LBB31_8
; CHECK-NEXT:  # %bb.7:
; CHECK-NEXT:    mv a0, a6
; CHECK-NEXT:  .LBB31_8:
; CHECK-NEXT:    vsetvli a2, zero, e8, mf2, ta, mu
; CHECK-NEXT:    vslidedown.vx v0, v24, a5
; CHECK-NEXT:    add a1, a1, a4
; CHECK-NEXT:    bltu a0, a3, .LBB31_10
; CHECK-NEXT:  # %bb.9:
; CHECK-NEXT:    mv a0, a3
; CHECK-NEXT:  .LBB31_10:
; CHECK-NEXT:    vsetvli zero, a0, e64, m8, ta, mu
; CHECK-NEXT:    vse64.v v16, (a1), v0.t
; CHECK-NEXT:    csrr a0, vlenb
; CHECK-NEXT:    slli a0, a0, 3
; CHECK-NEXT:    add sp, sp, a0
; CHECK-NEXT:    addi sp, sp, 16
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv17f64.p0nxv17f64(<vscale x 17 x double> %val, <vscale x 17 x double>* %ptr, <vscale x 17 x i1> %m, i32 %evl)
  ret void
}
