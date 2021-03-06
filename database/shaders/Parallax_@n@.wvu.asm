//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   float4 g_LightScattering_ConstG_FogDensity;
//   float4 g_LightScattering_Ray_Mie_Ray2_Mie2;
//   row_major float4x4 g_MtxLightViewProjection;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxVerticalLightViewProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 g_VerticalLightDirection;
//   float4 mrgGIAtlasParam;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgTexcoordOffset[2];
//
//
// Registers:
//
//   Name                                Reg   Size
//   ----------------------------------- ----- ----
//   mrgHasBone                          b0       1
//   g_MtxProjection                     c0       4
//   g_MtxView                           c4       4
//   g_MtxWorld                          c8       4
//   g_MtxLightViewProjection            c24      4
//   g_MtxPalette                        c28     75
//   g_EyePosition                       c178     1
//   mrgGlobalLight_Direction            c183     1
//   mrgGIAtlasParam                     c186     1
//   mrgTexcoordOffset                   c191     2
//   g_LightScattering_Ray_Mie_Ray2_Mie2 c197     1
//   g_LightScattering_ConstG_FogDensity c198     1
//   g_LightScatteringFarNearScale       c199     1
//   g_MtxVerticalLightViewProjection    c207     4
//   g_VerticalLightDirection            c211     1
//

    vs_3_0
    def c12, 1, 3, 1.44269502, 1.5
    def c13, 0.5, -0.5, 0.963845909, 0.0361540653
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_normal v5
    dcl_tangent v6
    dcl_binormal v7
    dcl_blendweight v8
    dcl_blendindices v9
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    dcl_texcoord4 o5
    dcl_texcoord5 o6
    dcl_texcoord6 o7
    dcl_texcoord8 o8
    dcl_texcoord7 o9
    mov r0.xy, v3
    mov r0.zw, v4.xyxy
    add o2, r0, c192
    mad r0.zw, v2.xyxy, c186.xyxy, c186
    mov r0.xy, v1
    add o1, r0, c191
    if b0
      add r0.x, c12.x, -v8.x
      add r0.x, r0.x, -v8.y
      add r0.x, r0.x, -v8.z
      mul r1, c12.y, v9
      mova a0, r1.yxzw
      mul r2, v8.y, c30[a0.x]
      mad r2, c30[a0.y], v8.x, r2
      mad r2, c30[a0.z], v8.z, r2
      mad r1, c30[a0.w], r0.x, r2
      dp4 r0.y, r1, v0
      dp3 r0.z, r1, v5
      mul r2, v8.y, c28[a0.x]
      mad r2, c28[a0.y], v8.x, r2
      mad r2, c28[a0.z], v8.z, r2
      mad r2, c28[a0.w], r0.x, r2
      dp4 r0.w, r2, v0
      dp3 r1.w, r2, v5
      dp3 r2.w, r2, v6
      mul r3, v8.y, c29[a0.x]
      mad r3, c29[a0.y], v8.x, r3
      mad r3, c29[a0.z], v8.z, r3
      mad r3, c29[a0.w], r0.x, r3
      dp4 r0.x, r3, v0
      dp3 r3.w, r3, v5
      dp3 r4.x, r3, v6
      dp3 r4.y, r1, v6
      dp3 r2.x, r2, -v7
      dp3 r2.y, r3, -v7
      dp3 r1.x, r1, -v7
      mov r1.y, v0.w
    else
      mov r2.w, v6.x
      mov r4.xy, v6.yzzw
      mov r2.xy, -v7
      mov r1.x, -v7.z
      mov r1.w, v5.x
      mov r3.w, v5.y
      mov r0.z, v5.z
      mov r0.xyw, v0.yzzx
      mov r1.y, v0.w
    endif
    mul r5, r0.x, c9
    mad r5, r0.w, c8, r5
    mad r5, r0.y, c10, r5
    mad r5, r1.y, c11, r5
    mul r6, r5.y, c5
    mad r6, r5.x, c4, r6
    mad r6, r5.z, c6, r6
    mad r6, r5.w, c7, r6
    mul r7, r6.y, c1
    mad r7, r6.x, c0, r7
    mad r7, r6.z, c2, r7
    mad o0, r6.w, c3, r7
    mov o3.xyz, r5
    mul r0.xyw, r4.x, c9.xyzz
    mad r0.xyw, r2.w, c8.xyzz, r0
    mad r0.xyw, r4.y, c10.xyzz, r0
    nrm r3.xyz, r0.xyww
    mov o4.xyz, r3
    mul r0.xyw, r3.w, c9.xyzz
    mad r0.xyw, r1.w, c8.xyzz, r0
    mad r0.xyz, r0.z, c10, r0.xyww
    nrm r4.xyz, r0
    mov o6.xyz, r4
    mul r0.xyz, r2.y, c9
    mad r0.xyz, r2.x, c8, r0
    mad r0.xyz, r1.x, c10, r0
    nrm r1.xyz, r0
    add r0.xyz, -r5, c178
    nrm r2.xyz, r0
    dp3 o5.w, r2, r1
    mov o5.xyz, r1
    mov o3.w, -r6.z
    dp3 r0.x, -c183, r2
    mad r0.y, c198.z, r0.x, c198.y
    pow r1.x, r0_abs.y, c12.w
    rcp r0.y, r1.x
    mul r0.y, r0.y, c198.x
    mul r0.y, r0.y, c197.w
    mad r0.x, r0.x, r0.x, c12.x
    mad r0.x, c197.z, r0.x, r0.y
    add r0.y, c197.y, c197.x
    rcp r0.z, r0.y
    mul r0.x, r0.z, r0.x
    add r0.z, -r6.z, -c199.y
    mul_sat r0.z, r0.z, c199.x
    mul r0.z, r0.z, c199.z
    mul r0.y, r0.z, -r0.y
    mul r0.y, r0.y, c12.z
    exp r0.y, r0.y
    mov o9.x, r0.y
    add r0.y, -r0.y, c12.x
    mul r0.x, r0.y, r0.x
    mul o9.y, r0.x, c199.w
    mov r4.w, c12.x
    dp4_sat r0.x, r4, c211
    add o9.z, -r0.x, c12.x
    dp3 r0.x, r4, r2
    mov o6.w, r0.x
    mov_sat r0.x, r0.x
    add r0.x, -r0.x, c12.x
    mul r0.y, r0.x, r0.x
    mul r0.y, r0.y, r0.y
    mul r0.x, r0.x, r0.y
    mad o9.w, r0.x, c13.z, c13.w
    dp3 o4.w, r2, r3
    mul r0, r5.y, c25
    mad r0, r5.x, c24, r0
    mad r0, r5.z, c26, r0
    add r0, r0, c27
    mov o7.zw, r0
    mul r0.xyz, r0.xyww, c13.xyxw
    add o7.xy, r0.z, r0
    mul r0, r5.y, c208
    mad r0, r5.x, c207, r0
    mad r0, r5.z, c209, r0
    add r0, r0, c210
    mov o8.zw, r0
    mul r0.xyz, r0.xyww, c13.xyxw
    add o8.xy, r0.z, r0

// approximately 139 instruction slots used
