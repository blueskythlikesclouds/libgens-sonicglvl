//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 g_ShadowVolumeDirection;
//   bool mrgHasBone;
//
//
// Registers:
//
//   Name                    Reg   Size
//   ----------------------- ----- ----
//   mrgHasBone              b15      1
//   g_MtxPalette            c28     75
//   g_MtxProjection         c224     4
//   g_MtxView               c228     4
//   g_MtxWorld              c232     4
//   g_ShadowVolumeDirection c246     1
//

    vs_3_0
    def c0, 0.999000013, 1, 3, 0
    dcl_position v0
    dcl_normal v1
    dcl_blendweight v2
    dcl_blendindices v3
    dcl_position o0
    if b15
      add r0.x, c0.y, -v2.x
      add r0.x, r0.x, -v2.y
      add r0.x, r0.x, -v2.z
      mul r1, c0.z, v3
      mova a0, r1.yxzw
      mul r2, v2.y, c30[a0.x]
      mad r2, c30[a0.y], v2.x, r2
      mad r2, c30[a0.z], v2.z, r2
      mad r1, c30[a0.w], r0.x, r2
      dp3 r0.y, r1, v1
      mul r2, c0.xxxy, v0
      dp4 r1.z, r1, r2
      mul r3, v2.y, c28[a0.x]
      mad r3, c28[a0.y], v2.x, r3
      mad r3, c28[a0.z], v2.z, r3
      mad r3, c28[a0.w], r0.x, r3
      dp4 r1.x, r3, r2
      dp3 r0.z, r3, v1
      mul r3, v2.y, c29[a0.x]
      mad r3, c29[a0.y], v2.x, r3
      mad r3, c29[a0.z], v2.z, r3
      mad r3, c29[a0.w], r0.x, r3
      dp4 r1.y, r3, r2
      dp3 r0.x, r3, v1
      mov r0.w, v0.w
    else
      mul r1.xyz, c0.x, v0
      mov r0.w, v0.w
      mov r0.xyz, v1.yzxw
    endif
    mul r2, r0.x, c233
    mad r2, r0.z, c232, r2
    mad r2, r0.y, c234, r2
    dp4 r0.x, r2, r2
    rsq r0.x, r0.x
    mul r0.xyz, r0.x, r2
    dp3 r0.x, r0, c246
    slt r0.x, c0.w, r0.x
    mul r2, r1.y, c233
    mad r2, r1.x, c232, r2
    mad r1, r1.z, c234, r2
    mad r1, r0.w, c235, r1
    mad r0.xyz, r0.x, c246, r1
    mul r2, r0.y, c229
    mad r2, r0.x, c228, r2
    mad r0, r0.z, c230, r2
    mad r0, r1.w, c231, r0
    mul r1, r0.y, c225
    mad r1, r0.x, c224, r1
    mad r1, r0.z, c226, r1
    mad o0, r0.w, c227, r1

// approximately 54 instruction slots used
