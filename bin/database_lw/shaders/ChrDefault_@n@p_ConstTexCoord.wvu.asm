//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float2 mrgFresnelParam;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgMorphWeight;
//   float4 mrgTexcoordIndex[4];
//   float4 mrgTexcoordOffset[2];
//   float4 mrgZOffsetRate;
//
//
// Registers:
//
//   Name                          Reg   Size
//   ----------------------------- ----- ----
//   mrgHasBone                    b15      1
//   g_MtxPalette                  c28     75
//   g_EyePosition                 c178     1
//   mrgGlobalLight_Direction      c183     1
//   mrgTexcoordIndex              c187     1
//   mrgTexcoordOffset             c191     2
//   mrgFresnelParam               c193     1
//   mrgMorphWeight                c194     1
//   mrgZOffsetRate                c195     1
//   g_LightScatteringFarNearScale c199     1
//   g_MtxProjection               c224     4
//   g_MtxView                     c228     4
//   g_MtxWorld                    c232     4
//

    vs_3_0
    def c4, 3, 0.5, 0, 0
    def c0, 1, 0, 0, 0
    def c1, 0, 1, 0, 0
    def c2, 0, 0, 1, 0
    def c3, 0, 0, 0, 1
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_texcoord4 v5
    dcl_texcoord5 v6
    dcl_texcoord6 v7
    dcl_texcoord7 v8
    dcl_normal v9
    dcl_tangent v10
    dcl_binormal v11
    dcl_blendweight v12
    dcl_blendindices v13
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord2 o2
    dcl_texcoord3 o3
    dcl_texcoord4 o4
    dcl_texcoord5 o5
    dcl_texcoord7 o6
    dcl_texcoord8 o7
    frc r0.x, c187.x
    slt r0.y, -r0.x, r0.x
    add r0.x, -r0.x, c187.x
    slt r0.z, c187.x, -c187.x
    mad r0.x, r0.z, r0.y, r0.x
    add r0.yz, c191.xxyw, v1.xxyw
    add r1.xy, c191.zwzw, v2
    add r1.zw, c192.xyxy, v3.xyxy
    mova a0.x, r0.x
    mul r0.xy, r0.yzzw, c0[a0.x].x
    mad r0.xy, c0[a0.x].y, r1, r0
    mad r0.xy, c0[a0.x].z, r1.zwzw, r0
    add r0.zw, c192, v4.xyxy
    mad o1.xy, c0[a0.x].w, r0.zwzw, r0
    abs r0.x, c195.x
    sge r0.x, -r0.x, r0.x
    mul r0.yzw, c194.y, v6.xxyz
    mad r0.yzw, c194.x, v5.xxyz, r0
    mad r0.yzw, c194.z, v7.xxyz, r0
    mad r0.yzw, c194.w, v8.xxyz, r0
    add r1.xyz, r0.yzww, v0
    if b15
      add r0.y, -v12.x, c0.x
      add r0.y, r0.y, -v12.y
      add r0.y, r0.y, -v12.z
      mul r2, v13, c4.x
      mova a0, r2.yxzw
      mul r3, v12.y, c30[a0.x]
      mad r3, v12.x, c30[a0.y], r3
      mad r3, v12.z, c30[a0.z], r3
      mad r2, r0.y, c30[a0.w], r3
      dp3 r0.z, r2, v9
      mov r1.w, c0.x
      dp4 r0.w, r2, r1
      mul r3, v12.y, c28[a0.x]
      mad r3, v12.x, c28[a0.y], r3
      mad r3, v12.z, c28[a0.z], r3
      mad r3, r0.y, c28[a0.w], r3
      dp3 r2.w, r3, v9
      dp4 r3.w, r3, r1
      dp3 r4.x, r3, v10
      mul r5, v12.y, c29[a0.x]
      mad r5, v12.x, c29[a0.y], r5
      mad r5, v12.z, c29[a0.z], r5
      mad r5, r0.y, c29[a0.w], r5
      dp4 r1.y, r5, r1
      dp3 r0.y, r5, v9
      dp3 r1.w, r5, v10
      dp3 r4.y, r2, v10
      dp3 r3.x, r3, -v11
      dp3 r3.y, r5, -v11
      dp3 r2.x, r2, -v11
      mov r1.x, r3.w
      mov r1.z, r0.w
    else
      mov r1.w, v10.y
      mov r4.xy, v10.xzzw
      mov r3.xy, -v11
      mov r2.x, -v11.z
      mov r2.w, v9.x
      mov r0.yz, v9
    endif
    mul r5.xyz, r1.w, c233
    mad r4.xzw, r4.x, c232.xyyz, r5.xyyz
    mad o6.xyz, r4.y, c234, r4.xzww
    mul r3.yzw, r3.y, c233.xxyz
    mad r3.xyz, r3.x, c232, r3.yzww
    mad o7.xyz, r2.x, c234, r3
    mul r2.xyz, r0.y, c233
    mad r2.xyz, r2.w, c232, r2
    mad r0.yzw, r0.z, c234.xxyz, r2.xxyz
    nrm r2.xyz, r0.yzww
    mov o3.xyz, r2
    mul r3, r1.y, c233
    mad r3, r1.x, c232, r3
    mad r1, r1.z, c234, r3
    add r1, r1, c235
    mov o2.xyz, r1
    mul r3, r1.y, c229
    mad r3, r1.x, c228, r3
    mad r3, r1.z, c230, r3
    mad r3, r1.w, c231, r3
    mov r4.xyw, c0
    mad r5, c195.x, r4.yyxw, r3
    mul r0.yz, r5.y, c225.xzww
    mad r0.yz, r5.x, c224.xzww, r0
    mad r0.yz, r5.z, c226.xzww, r0
    mad r0.yz, r5.w, c227.xzww, r0
    rcp r0.z, r0.z
    mul r0.y, r0.z, r0.y
    mul r5, r3.y, c225
    mad r5, r3.x, c224, r5
    mad r5, r3.z, c226, r5
    mad r5, r3.w, c227, r5
    mov o0.xyw, r5
    mad r0.z, r0.y, -r5.w, r5.z
    mul r0.y, r0.y, r5.w
    mad o0.z, r0.x, r0.z, r0.y
    add r0.x, r4.x, -c193.x
    add r0.yzw, -r1.xxyz, c178.xxyz
    nrm r1.xyz, r0.yzww
    dp3_sat r0.y, r2, r1
    add r0.y, -r0.y, c0.x
    mul r0.z, r0.y, r0.y
    mul r0.z, r0.z, r0.z
    mul r0.y, r0.y, r0.z
    mad o3.w, r0.y, r0.x, c193.x
    add r0.x, -r3.z, -c195.x
    mov o2.w, r0.x
    add r0.x, r0.x, -c199.y
    mul_sat o5.x, r0.x, c199.x
    dp3 r0.x, -c183, r1
    mad o5.y, r0.x, c4.y, c4.y
    mov o1.zw, c0.w
    mov o4, c0.w
    mov o5.zw, c0.w
    mov o6.w, c0.w
    mov o7.w, c0.w

// approximately 124 instruction slots used