//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_ChaosWaveParamEx;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   sampler2D g_FramebufferSampler;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampBlend;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
//   sampler2D sampSpec;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   g_SonicSkinFalloffParam               c150     1
//   g_ChaosWaveParamEx                    c151     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampNrm2                              s3       1
//   sampEnv                               s5       1
//   sampBlend                             s6       1
//   g_VerticalShadowMapSampler            s7       1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    def c1, 0, 500, 5, 1024
    def c2, -2, 3, 0.5, -0.5
    def c3, 4, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8.w
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s11
    dcl_2d s13
    max r0.x, v3.z, c1.x
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c1.x, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    max r0.y, v4.z, c1.x
    add r0.z, r0.y, -v4.w
    cmp r1.z, r0.z, c1.x, r0.y
    mov r1.xyw, v4
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v5.z, c0.z, r1.x
    lrp_pp r0.y, v5.z, c0.z, r2.x
    rcp r0.z, v3.w
    mul r0.zw, r0.z, v3.xyxy
    mad r0.zw, r0, c0.x, c0.y
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r1.x, r0.z, r0.w
    lrp_pp r2.x, r1.x, c0.z, r0.y
    lrp_pp r2.y, r1.x, c0.z, r0.x
    mul r0.x, r2.x, c77.w
    add_pp r0.y, -c61.z, c61.y
    rcp_pp r0.y, r0.y
    add r1.xyz, -c22, v1
    dp3 r0.z, r1, r1
    rsq r0.z, r0.z
    mul_pp r1.xyz, r0.z, r1
    rcp r0.z, r0.z
    add r0.z, r0.z, -c60.z
    dp3_pp r0.w, r1, c23
    add_pp r0.w, r0.w, -c61.z
    mul_sat_pp r0.y, r0.y, r0.w
    mad_pp r0.w, r0.y, c2.x, c2.y
    mul_pp r0.y, r0.y, r0.y
    mul_pp r0.y, r0.y, r0.w
    pow_sat_pp r1.w, r0.y, c61.w
    mov r3.yz, c0
    add r0.y, r3.z, -c61.x
    cmp_pp r0.y, r0.y, c0.z, r1.w
    add r0.w, -c60.z, c60.w
    rcp r0.w, r0.w
    mul_sat r0.z, r0.w, r0.z
    add_pp r0.z, -r0.z, c0.z
    cmp_pp r0.z, -c61.x, r3.z, r0.z
    mul_pp r0.y, r0.y, r0.z
    texld_pp r4, v0, s2
    mul_pp r4.x, r4.w, r4.x
    mad_pp r0.zw, r4.xyxy, c0.x, c0.y
    dp2add_pp r1.w, r0.zwzw, -r0.zwzw, c0.z
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r4.xyz, v7
    mul_pp r2.xzw, r0.w, r4.xyyz
    nrm_pp r5.xyz, v6
    mad_pp r2.xzw, r0.z, r5.xyyz, r2
    nrm_pp r6.xyz, v2
    mad_pp r2.xzw, r1.w, r6.xyyz, r2
    texld_pp r7, v0, s3
    mul_pp r7.x, r7.w, r7.x
    mad_pp r0.zw, r7.xyxy, c0.x, c0.y
    mul_pp r3.xzw, r4.xyyz, r0.w
    mad_pp r3.xzw, r0.z, r5.xyyz, r3
    dp2add_pp r0.z, r0.zwzw, -r0.zwzw, c0.z
    rsq_pp r0.z, r0.z
    rcp_pp r0.z, r0.z
    mad_pp r3.xzw, r0.z, r6.xyyz, r3
    add_pp r2.xzw, r2, r3
    nrm_pp r4.xyz, r2.xzww
    add_pp r2.xzw, c22.xyyz, -v1.xyyz
    dp3_pp r0.z, r2.xzww, r2.xzww
    rsq_pp r0.z, r0.z
    mad_pp r1.xyz, r2.xzww, r0.z, -r1
    nrm_pp r5.xyz, r1
    dp3_sat_pp r0.w, r5, r4
    mov_pp r1.yz, c1
    mul_pp r1.xy, r1.yzzw, c20.yzzw
    max_pp r3.x, r1.x, c0.z
    min r1.x, r3.x, c1.w
    pow r3.x, r0.w, r1.x
    mul_pp r5.xyz, c59.w, c59
    mul_pp r5.xyz, r1.y, r5
    mul_pp r1.yzw, r1.y, c37.xxyz
    mul_pp r3.xzw, r3.x, r5.xyyz
    mul_pp r3.xzw, r0.y, r3
    mad_pp r5.xyz, r2.xzww, r0.z, -c10
    mul_pp r0.yzw, r0.z, r2.xxzw
    nrm_pp r6.xyz, r5
    dp3_sat_pp r2.x, r6, r4
    pow r4.w, r2.x, r1.x
    mul_pp r1.xyz, r1.yzww, r4.w
    mad_pp r1.xyz, r1, r0.x, r3.xzww
    mul_pp r1.xyz, r1, c18
    mul r1.w, c64.z, c64.x
    mov r2.xz, c64
    mad r2.x, r2.x, -r2.z, r2.z
    mad_pp r1.w, r0.x, r2.x, r1.w
    mad r0.x, r0.x, c0.w, c0.w
    mul r5, r4.y, c91
    mad r5, r4.x, c90, r5
    mad r5, r4.z, c92, r5
    dp4 r2.x, r5, r5
    rsq r2.x, r2.x
    mul r2.xz, r2.x, r5.xyyw
    mad_pp r2.xz, r2, c2.zyww, c2.z
    texld_pp r6, r2.xzzw, s5
    mul r2.xzw, r6.xyyz, c63.x
    mad_pp r2.xzw, r2, r6.w, r6.xyyz
    texld_pp r6, v0, s1
    mul_pp r2.xzw, r2, r6.w
    mul_pp r2.xzw, r1.w, r2
    mul_pp r2.xzw, r2, c17.xyyz
    mad_pp r1.xyz, r1, r6, r2.xzww
    mul_pp r2.xzw, r4.xyyz, r4.xyyz
    mad_pp r3.xzw, r4.xyyz, c0.w, c0.w
    mov r6.xyz, c79
    add r6.xyz, -r6, c80
    mad r7.xyz, r3.z, r6, c79
    mul r7.xyz, r2.z, r7
    mov r8.xyz, c77
    add r8.xyz, -r8, c78
    mad r9.xyz, r3.x, r8, c77
    mad_pp r7.xyz, r2.x, r9, r7
    mov r9.xyz, c81
    add r9.xyz, -r9, c82
    mad r3.xzw, r3.w, r9.xyyz, c81.xyyz
    mad_pp r2.xzw, r2.w, r3, r7.xyyz
    mul_pp r3.xzw, r2, c17.xyyz
    mul r3.xzw, r3, c70.w
    mad r2.xzw, r2, c17.xyyz, -r3
    mad_pp r2.xyz, r2.y, r2.xzww, r3.xzww
    add_pp r2.xyz, r2, c0.z
    mul_pp r2.xyz, r2, c16
    mul r1.w, c24.w, vPos.y
    mad_pp r7.y, r1.w, -c0.x, -c0.y
    dp2add_pp r7.x, vPos.x, c24.z, r3.y
    mad_pp r3.xy, r5, c151.y, r7
    mad r3.xy, r3, c2.zwzw, c2.z
    texld_pp r3, r3, s11
    texld_pp r5, v0, s0
    mad_pp r2.xyz, r2, r5, -r3
    mul_pp r1.w, r5.w, c16.w
    mul_pp r1.w, r1.w, v8.w
    mul_pp r5.w, r1.w, c21.x
    texld_pp r7, v0, s6
    mad_pp r2.xyz, r7.x, r2, r3
    mad_pp r1.xyz, r1, v2.w, r2
    dp3_pp r1.w, r0.yzww, r4
    add_sat_pp r2.x, -r1.w, c0.z
    add_pp r1.w, r1.w, r1.w
    mad_pp r0.yzw, r1.w, r4.xxyz, -r0
    pow_pp r1.w, r2.x, c150.z
    mul r1.w, r1.w, c150.y
    mad_pp r0.x, r1.w, r0.x, c150.x
    mad_pp r2.xyz, r0.yzww, c0.w, c0.w
    mul_pp r0.yzw, r0, r0
    mad r3.xyz, r2.y, r6, c79
    mul r3.xyz, r0.z, r3
    mad r2.xyw, r2.x, r8.xyzz, c77.xyzz
    mad r4.xyz, r2.z, r9, c81
    mad_pp r2.xyz, r0.y, r2.xyww, r3
    mad_pp r0.yzw, r0.w, r4.xxyz, r2.xxyz
    mad_pp r5.xyz, r0.yzww, r0.x, r1
    mul_pp r0, r5, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 192 instruction slots used (9 texture, 183 arithmetic)