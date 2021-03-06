//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   sampler2D g_FramebufferSampler;
//   float4 g_GI0Scale;
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
//   sampler2D sampSpe;
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
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampNrm                               s3       1
//   sampNrm2                              s4       1
//   sampEnv                               s5       1
//   g_GISampler                           s10      1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 1024
    def c1, -2, 3, 500, 5
    def c2, 2, -1, 1, 0
    def c3, 0.5, -0.5, 0.0500000007, 4
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s10
    dcl_2d s11
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c1.x, c1.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r2.yz, c2
    add r0.x, r2.z, -c61.x
    cmp_pp r0.x, r0.x, c2.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c2.z
    cmp_pp r1.x, -c61.x, r2.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c48.z, c48.w
    rcp r1.x, r1.x
    add r1.yzw, -c46.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    rcp r2.z, r2.x
    mul_pp r1.yzw, r1, r2.x
    add r2.x, r2.z, -c48.z
    mul_sat r1.x, r1.x, r2.x
    add_pp r1.x, -r1.x, c2.z
    add r2.x, -c40.z, c40.w
    rcp r2.x, r2.x
    add r3.xyz, -c38, v1
    dp3 r2.z, r3, r3
    rsq r2.z, r2.z
    rcp r2.w, r2.z
    mul_pp r3.xyz, r2.z, r3
    add r2.z, r2.w, -c40.z
    mul_sat r2.x, r2.x, r2.z
    add r2.z, -c44.z, c44.w
    rcp r2.z, r2.z
    add r4.xyz, -c42, v1
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r3.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r3.w, -c44.z
    mul_sat r2.z, r2.z, r2.w
    add_pp r2.xz, -r2, c2.z
    texld_pp r5, v0, s3
    mul_pp r5.x, r5.w, r5.x
    mad_pp r5.xy, r5, c2.x, c2.y
    dp2add_pp r2.w, r5, -r5, c2.z
    rsq_pp r2.w, r2.w
    rcp_pp r2.w, r2.w
    nrm_pp r6.xyz, v6
    mul_pp r5.yzw, r5.y, r6.xxyz
    nrm_pp r7.xyz, v5
    mad_pp r5.xyz, r5.x, r7, r5.yzww
    nrm_pp r8.xyz, v2
    mad_pp r5.xyz, r2.w, r8, r5
    texld_pp r9, v0, s4
    mul_pp r9.x, r9.w, r9.x
    mad_pp r9.xy, r9, c2.x, c2.y
    mul_pp r6.xyz, r6, r9.y
    mad_pp r6.xyz, r9.x, r7, r6
    dp2add_pp r2.w, r9, -r9, c2.z
    rsq_pp r2.w, r2.w
    rcp_pp r2.w, r2.w
    mad_pp r6.xyz, r2.w, r8, r6
    add_pp r5.xyz, r5, r6
    nrm_pp r6.xyz, r5
    add_pp r5.xyz, c22, -v1
    dp3_pp r2.w, r5, r5
    rsq_pp r2.w, r2.w
    mad_pp r7.xyz, r5, r2.w, -r4
    dp3_pp r3.w, r6, -r4
    nrm_pp r4.xyz, r7
    dp3_sat_pp r4.x, r4, r6
    mov_pp r4.zw, c1
    mul_pp r4.yz, r4.xzww, c20
    max_pp r5.w, r4.y, c2.z
    min r4.y, r5.w, c0.w
    pow r5.w, r4.x, r4.y
    mul_pp r7.xyz, r4.z, c43
    mul_pp r7.xyz, r5.w, r7
    mul_pp r7.xyz, r2.z, r7
    mad_pp r8.xyz, r5, r2.w, -r3
    dp3_pp r3.x, r6, -r3
    nrm_pp r9.xyz, r8
    dp3_sat_pp r3.y, r9, r6
    pow r5.w, r3.y, r4.y
    mul_pp r8.xyz, r4.z, c39
    mul_pp r8.xyz, r5.w, r8
    mad_pp r7.xyz, r2.x, r8, r7
    mad_pp r8.xyz, r5, r2.w, -r1.yzww
    dp3_pp r1.y, r6, -r1.yzww
    nrm_pp r9.xyz, r8
    dp3_sat_pp r1.z, r9, r6
    pow r3.y, r1.z, r4.y
    mul_pp r8.xyz, r4.z, c47
    mul_pp r8.xyz, r3.y, r8
    mad_pp r7.xyz, r1.x, r8, r7
    add r1.z, -c52.z, c52.w
    rcp r1.z, r1.z
    add r8.xyz, -c50, v1
    dp3 r1.w, r8, r8
    rsq r1.w, r1.w
    rcp r3.y, r1.w
    mul_pp r8.xyz, r1.w, r8
    add r1.w, r3.y, -c52.z
    mul_sat r1.z, r1.z, r1.w
    add_pp r1.z, -r1.z, c2.z
    mad_pp r9.xyz, r5, r2.w, -r8
    dp3_pp r1.w, r6, -r8
    nrm_pp r8.xyz, r9
    dp3_sat_pp r3.y, r8, r6
    pow r5.w, r3.y, r4.y
    mul_pp r8.xyz, r4.z, c51
    mul_pp r8.xyz, r5.w, r8
    mad_pp r7.xyz, r1.z, r8, r7
    rcp r3.y, v3.w
    mul r3.yz, r3.y, v3.xxyw
    mad r3.yz, r3, c2.x, c2.y
    abs_sat r3.yz, r3
    add_sat r3.yz, r3, -c65.x
    mul r3.yz, r3, c65.y
    max r4.x, r3.y, r3.z
    max r3.y, v3.z, c2.w
    add r3.z, r3.y, -v3.w
    cmp r8.z, r3.z, c2.w, r3.y
    mov r8.xyw, v3
    texldp_pp r8, r8, s13
    lrp_pp r3.y, v4.z, c2.z, r8.x
    lrp_pp r5.w, r4.x, c2.z, r3.y
    texld_pp r8, v0.zwzw, s10
    mul r3.y, r5.w, r8.w
    mad_pp r9.xyz, r5, r2.w, -c10
    mad_pp r5.xyz, r5, r2.w, -r0.yzww
    dp3_pp r0.y, r6, -r0.yzww
    nrm_pp r10.xyz, r5
    dp3_sat_pp r0.z, r10, r6
    pow r2.w, r0.z, r4.y
    nrm_pp r5.xyz, r9
    dp3_sat_pp r0.z, r5, r6
    pow r3.z, r0.z, r4.y
    mul_pp r4.xyw, r4.z, c37.xyzz
    mul_pp r4.xyw, r3.z, r4
    mad_pp r4.xyw, r4, r3.y, r7.xyzz
    mul_pp r5.xyz, c59.w, c59
    mul_pp r5.xyz, r4.z, r5
    mul_pp r5.xyz, r2.w, r5
    mad_pp r4.xyz, r0.x, r5, r4.xyww
    mul r7, r6.y, c91
    mad r7, r6.x, c90, r7
    mad r7, r6.z, c92, r7
    dp3_pp r0.z, r6, -c10
    dp4 r0.w, r7, r7
    rsq r0.w, r0.w
    mul r5.xy, r0.w, r7
    mad_pp r5.xy, r5, c3, c3.x
    texld_pp r6, r5, s5
    mul r5.xyz, r6, c63.x
    mad_pp r5.xyz, r5, r6.w, r6
    texld_pp r6, v0, s1
    mul_pp r5.xyz, r5, r6.w
    mul r0.w, c64.z, c64.x
    mov r9.xz, c64
    mad r2.w, r9.x, -r9.z, r9.z
    mad_pp r0.w, r3.y, r2.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_pp r4.xyz, r4, c18, r5
    mul_pp r4.xyz, r6, r4
    mul_pp r4.xyz, r4, v2.w
    mul_pp r5.xyz, r3.w, c43
    cmp_pp r5.xyz, r3.w, r5, c2.w
    mul_pp r5.xyz, r2.z, r5
    mul_pp r6.xyz, r3.x, c39
    cmp_pp r3.xzw, r3.x, r6.xyyz, c2.w
    mad_pp r2.xzw, r2.x, r3, r5.xyyz
    mul_pp r3.xzw, r1.y, c47.xyyz
    cmp_pp r3.xzw, r1.y, r3, c2.w
    mad_pp r2.xzw, r1.x, r3, r2
    mul_pp r3.xzw, r1.w, c51.xyyz
    cmp_pp r1.xyw, r1.w, r3.xzzw, c2.w
    mad_pp r1.xyz, r1.z, r1.xyww, r2.xzww
    mul r2.xzw, r0.z, c36.xyyz
    mul_pp r2.xzw, r3.y, r2
    cmp_pp r2.xzw, r0.z, r2, c2.w
    add_pp r1.xyz, r1, r2.xzww
    mul_pp r2.xzw, c58.w, c58.xyyz
    mul_pp r2.xzw, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxzw, c2.w
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mul_pp r1.xyz, r8, r8
    dp3_pp r0.w, r1, c0
    mad_pp r1.xyz, r8, r8, -r0.w
    mad_sat_pp r1.xyz, r1, c71.w, r0.w
    mul_pp r1.xyz, r1, c70
    mul_pp r2.xzw, r1.xyyz, c17.xyyz
    mul r2.xzw, r2, c70.w
    mad r1.xyz, r1, c17, -r2.xzww
    mad_pp r1.xyz, r5.w, r1, r2.xzww
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    mad_pp r0.xyz, r0, r1, r4
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v7.w
    mul_pp r1.w, r0.w, c21.x
    mul r0.w, c24.w, vPos.y
    mad_pp r3.y, r0.w, -c2.x, -c2.y
    dp2add_pp r3.x, vPos.x, c24.z, r2.y
    mad_pp r2.xy, r7, c3.z, r3
    mad r2.xy, r2, c3, c3.x
    texld_pp r2, r2, s11
    add_pp r0.xyz, r0, r2
    mul_pp r1.xyz, r0, v7
    mul_pp r0, r1, c89
    min_pp r1, r0, c3.w
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 264 instruction slots used (8 texture, 256 arithmetic)
