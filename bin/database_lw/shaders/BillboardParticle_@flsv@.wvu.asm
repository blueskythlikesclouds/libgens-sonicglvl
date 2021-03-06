//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   row_major float4x4 g_MtxWorldIT;
//   float4 g_ParticleOptionParam;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgHasBone               b15      1
//   mrgGlobalLight_Direction c183     1
//   mrgGlobalLight_Diffuse   c184     1
//   g_aLightField            c213     6
//   g_MtxProjection          c224     4
//   g_MtxView                c228     4
//   g_MtxWorld               c232     4
//   g_MtxWorldIT             c236     3
//   g_ParticleOptionParam    c246     1
//

    vs_3_0
    def c0, -1, 0, 3, -0.100000001
    def c1, 0.25, 0.5, 0, 0
    dcl_position v0
    dcl_texcoord v1
    dcl_color v2
    dcl_texcoord1 v3
    dcl_texcoord2 v4
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_color o3
    dcl_color1 o4
    dcl_texcoord2 o5
    mov o1, v1
    mul r0, c233, v0.y
    mad r0, v0.x, c232, r0
    mad r0, v0.z, c234, r0
    add r0, r0, c235
    if b15
      nrm r1.xyz, v3
      mul r2.xyz, r1.y, c229
      mad r1.xyw, r1.x, c228.xyzz, r2.xyzz
      mad r1.xyz, r1.z, c230, r1.xyww
      mul r2.xyz, r1, v0.w
      mul r3.xyz, r1.yzxw, c0.xyyw
      mad r1.xyz, r1.zxyw, c0.yxyw, -r3
      dp3 r1.w, r1, r1
      rsq r1.w, r1.w
      mul r1.xyz, r1.w, r1
      mad r2.xyz, r1, v3.w, r2
      rcp r1.x, r1.w
      mad_sat r1.x, r1.x, c0.z, c0.w
      mul o3.w, r1.x, v2.w
      mul r1, r0.y, c229
      mad r1, r0.x, c228, r1
      mad r1, r0.z, c230, r1
      mad r1, r0.w, c231, r1
      mov r2.w, c0.y
      add r1, r1, r2
      mov r2.x, c0.y
    else
      mul r3, c237, v3.y
      mad r3, v3.x, c236, r3
      mad r3, v3.z, c238, r3
      add r0, r0, r3
      mul r3, r0.y, c229
      mad r3, r0.x, c228, r3
      mad r3, r0.z, c230, r3
      mad r1, r0.w, c231, r3
      mov o3.w, v2.w
      mov r2.x, v0.w
    endif
    mov r2.y, c0.y
    add r0, r1, r2.yyxy
    mul r2.xy, r0.y, c225.zwzw
    mad r0.xy, r0.x, c224.zwzw, r2
    mad r0.xy, r0.z, c226.zwzw, r0
    mad r0.xy, r0.w, c227.zwzw, r0
    rcp r0.y, r0.y
    mul r0.x, r0.y, r0.x
    dp3 r0.y, v3, v3
    rsq r0.y, r0.y
    mad r0.yzw, v3.xxyz, r0.y, c0_abs.xyyx
    nrm r2.xyz, r0.yzww
    mul r0.yzw, r2.y, c237.xxyz
    mad r0.yzw, r2.x, c236.xxyz, r0
    mad r0.yzw, r2.z, c238.xxyz, r0
    dp3 r2.x, -c183, -c183
    rsq r2.x, r2.x
    mul r2.xz, r2.x, -c183.yyzw
    mov r2.y, c0.y
    add r0.yzw, r0, r2.xxyz
    nrm r2.xyz, r0.yzww
    mul r0.yzw, r2.xxyz, r2.xxyz
    mad r2.xyz, r2, c1.y, c1.y
    mov r3.xyz, c216
    mad r3.xyz, r3, r2.y, c215
    mul r3.xyz, r0.z, r3
    mov r4.xyz, c213
    mad r2.xyw, c214.xyzz, r2.x, r4.xyzz
    mad r2.xyw, r0.y, r2, r3.xyzz
    mov r3.xyz, c218
    mad r3.xyz, r3, r2.z, c217
    mad o4.xyz, r0.w, r3, r2.xyww
    mov r2.x, c0.x
    add r0.y, -r2.x, c246.y
    mul r0.y, r0.y, c246.x
    mov r2.x, c1.x
    add r2.xyz, r2.x, c184
    mul r0.yzw, r0.y, r2.xxyz
    mul o3.xyz, r0.yzww, v2
    mul r2.xyz, r1.y, c225.xyww
    mad r2.xyz, r1.x, c224.xyww, r2
    mad r2.xyz, r1.z, c226.xyww, r2
    mad r1.xyw, r1.w, c227, r2.xyzz
    mul o0.z, r0.x, r1.w
    mov o2, r1.xywz
    mov o0.xyw, r1
    mul o5.xyz, r0.yzww, v4
    mov o4.w, c213.w
    mov o5.w, v4.w

// approximately 96 instruction slots used
