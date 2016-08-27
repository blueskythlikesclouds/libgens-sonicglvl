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
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
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
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
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
//   mrgTexcoordIndex                      c26      2
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
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampNrm                               s3       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 500, 5, 1024, 0.25
    def c2, 4, 0, 0, 0
    def c3, 0, 1, 2, 3
    def c4, -1, 1, 0, 0.5
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9
    dcl vPos.y
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s5
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, -c0.y, -c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c3
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c3.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c3.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v4.z, c3.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c3.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    max r1.y, v5.z, c3.x
    add r1.z, r1.y, -v5.w
    cmp r3.z, r1.z, c3.x, r1.y
    mov r3.xyw, v5
    texldp_pp r3, r3, s7
    min_pp r2.y, r3.x, r1.x
    lrp_pp r1.x, v6.z, c3.y, r3.x
    lrp_pp r1.y, v6.z, c3.y, r2.y
    rcp r1.z, v4.w
    mul r1.zw, r1.z, v4.xyxy
    mad r1.zw, r1, c0.y, c0.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.y, r1.z, r1.w
    lrp_pp r3.x, r2.y, c3.y, r1.y
    lrp_pp r3.y, r2.y, c3.y, r1.x
    mul r1.x, r3.x, c77.w
    add r1.y, -c52.z, c52.w
    rcp r1.y, r1.y
    add r2.yzw, -c50.xxyz, v2.xxyz
    dp3 r1.z, r2.yzww, r2.yzww
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    mul_pp r2.yzw, r1.z, r2
    add r1.z, r1.w, -c52.z
    mul_sat r1.y, r1.y, r1.z
    add r1.z, -c48.z, c48.w
    rcp r1.z, r1.z
    add r3.xzw, -c46.xyyz, v2.xyyz
    dp3 r1.w, r3.xzww, r3.xzww
    rsq r1.w, r1.w
    rcp r4.x, r1.w
    mul_pp r3.xzw, r1.w, r3
    add r1.w, r4.x, -c48.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c40.z, c40.w
    rcp r1.w, r1.w
    add r4.xyz, -c38, v2
    dp3 r4.w, r4, r4
    rsq r4.w, r4.w
    rcp r5.x, r4.w
    mul_pp r4.xyz, r4.w, r4
    add r4.w, r5.x, -c40.z
    mul_sat r1.w, r1.w, r4.w
    add_pp r1.yzw, -r1, c3.y
    add r4.w, -c44.z, c44.w
    rcp r4.w, r4.w
    add r5.xyz, -c42, v2
    dp3 r5.w, r5, r5
    rsq r5.w, r5.w
    rcp r6.x, r5.w
    mul_pp r5.xyz, r5.w, r5
    add r5.w, r6.x, -c44.z
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c3.y
    frc r5.w, c27.x
    cmp r6.x, -r5.w, c3.x, c3.y
    add r5.w, -r5.w, c27.x
    cmp r6.x, c27.x, r2.x, r6.x
    add r5.w, r5.w, r6.x
    add r6, r5.w, -c3
    cmp r7.xy, -r6_abs.x, v0, c3.x
    cmp r6.xy, -r6_abs.y, v0.zwzw, r7
    cmp r6.xy, -r6_abs.z, v1, r6
    cmp r6.xy, -r6_abs.w, v1.zwzw, r6
    texld_pp r6, r6, s3
    mul_pp r6.x, r6.w, r6.x
    mad_pp r6.xy, r6, c0.y, c0.z
    nrm_pp r7, v8.xyzx
    mul_pp r7, r6.y, r7
    nrm_pp r8, v7.xyzx
    mad_pp r7, r6.x, r8, r7
    dp2add_pp r5.w, r6, -r6, c3.y
    rsq_pp r5.w, r5.w
    rcp_pp r5.w, r5.w
    nrm_pp r6, v3.xyzx
    mad r6, r5.w, r6, r7
    add_pp r7, c22.xyzx, -v2.xyzx
    dp3_pp r5.w, r7.yzww, r7.yzww
    rsq_pp r5.w, r5.w
    mad_pp r8.xyz, r7, r5.w, -r5
    dp3_pp r5.x, r6.wyzw, -r5
    nrm_pp r9.xyz, r8
    dp3_sat_pp r5.y, r9, r6
    mov_pp r8.xy, c1
    mul_pp r8.xy, r8, c20.yzzw
    max_pp r5.z, r8.x, c3.y
    min r8.x, r5.z, c1.z
    pow r9.x, r5.y, r8.x
    mul_pp r9.yzw, r8.y, c43.xxyz
    mul_pp r9.xyz, r9.x, r9.yzww
    mul_pp r9.xyz, r4.w, r9
    mad_pp r10.xyz, r7, r5.w, -r4
    dp3_pp r4.x, r6.wyzw, -r4
    nrm_pp r11.xyz, r10
    dp3_sat_pp r4.y, r11, r6
    pow r5.y, r4.y, r8.x
    mul_pp r10.xyz, r8.y, c39
    mul_pp r10.xyz, r5.y, r10
    mad_pp r9.xyz, r1.w, r10, r9
    mad_pp r10.xyz, r7, r5.w, -r3.xzww
    dp3_pp r3.x, r6.wyzw, -r3.xzww
    nrm_pp r11.xyz, r10
    dp3_sat_pp r3.z, r11, r6
    pow r4.y, r3.z, r8.x
    mul_pp r10.xyz, r8.y, c47
    mul_pp r10.xyz, r4.y, r10
    mad_pp r9.xyz, r1.z, r10, r9
    mad_pp r10.xyz, r7, r5.w, -r2.yzww
    dp3_pp r2.y, r6.wyzw, -r2.yzww
    nrm_pp r11.xyz, r10
    dp3_sat_pp r2.z, r11, r6
    pow r3.z, r2.z, r8.x
    mul_pp r10.xyz, r8.y, c51
    mul_pp r10.xyz, r3.z, r10
    mad_pp r9.xyz, r1.y, r10, r9
    mad_pp r10.xyz, r7, r5.w, -c10
    nrm_pp r11.xyz, r10
    dp3_sat_pp r2.z, r11, r6
    pow r3.z, r2.z, r8.x
    mul_pp r10.xyz, r8.y, c37
    mul_pp r10.xyz, r3.z, r10
    mad_pp r9.xyz, r10, r1.x, r9
    mul_pp r10.xyz, c59.w, c59
    mul_pp r8.yzw, r8.y, r10.xxyz
    mad_pp r10.xyz, r7, r5.w, -r0.yzww
    dp3_pp r0.y, r6.wyzw, -r0.yzww
    mul r7, r5.w, r7
    nrm_pp r11.xyz, r10
    dp3_sat_pp r0.z, r11, r6
    pow r2.z, r0.z, r8.x
    mul_pp r5.yzw, r2.z, r8
    mad_pp r5.yzw, r0.x, r5, r9.xxyz
    dp3 r0.z, r7.yzww, r6.yzww
    add r0.z, r0.z, r0.z
    mad r7, r0.z, r6, -r7
    mad r8, r7.wyzw, c4.xxyz, c4.zzzw
    mul r9, r7, c4.yxxz
    cmp r7, r7.z, r8, r9
    add r0.z, r7.z, c3.y
    rcp r0.z, r0.z
    mad r0.zw, r7.xyyx, r0.z, c3.y
    mad_pp r7.x, r0.w, c1.w, r7.w
    mul_pp r7.y, r0.z, c0.x
    texld_pp r7, r7, s5
    mul r8.xyz, r7, c63.x
    mad_pp r7.xyz, r8, r7.w, r7
    frc r0.zw, c26.xyxz
    cmp r2.zw, -r0, c3.x, c3.y
    add r0.zw, -r0, c26.xyxz
    cmp r2.xz, c26, r2.x, r2.zyww
    add r0.zw, r0, r2.xyxz
    add r8, r0.w, -c3
    add r9, r0.z, -c3
    cmp r0.zw, -r8_abs.x, v0.xyxy, c3.x
    cmp r0.zw, -r8_abs.y, v0, r0
    cmp r0.zw, -r8_abs.z, v1.xyxy, r0
    cmp r0.zw, -r8_abs.w, v1, r0
    texld_pp r8, r0.zwzw, s1
    mul_pp r2.xzw, r7.xyyz, r8.w
    mul r0.z, c64.z, c64.x
    mov r7.xz, c64
    mad r0.w, r7.x, -r7.z, r7.z
    mad_pp r0.z, r1.x, r0.w, r0.z
    mul_pp r2.xzw, r0.z, r2
    mad_pp r2.xzw, r5.yyzw, c18.xyyz, r2
    mul_pp r2.xzw, r8.xyyz, r2
    mul_pp r2.xzw, r2, v3.w
    mul_pp r5.yzw, r5.x, c43.xxyz
    cmp_pp r5.xyz, r5.x, r5.yzww, c3.x
    mul_pp r4.yzw, r4.w, r5.xxyz
    mul_pp r5.xyz, r4.x, c39
    cmp_pp r5.xyz, r4.x, r5, c3.x
    mad_pp r4.xyz, r1.w, r5, r4.yzww
    mul_pp r5.xyz, r3.x, c47
    cmp_pp r3.xzw, r3.x, r5.xyyz, c3.x
    mad_pp r3.xzw, r1.z, r3, r4.xyyz
    mul_pp r4.xyz, r2.y, c51
    cmp_pp r4.xyz, r2.y, r4, c3.x
    mad_pp r1.yzw, r1.y, r4.xxyz, r3.xxzw
    dp3_pp r0.z, r6.wyzw, -c10
    mul r3.xzw, r0.z, c36.xyyz
    mul_pp r3.xzw, r1.x, r3
    cmp_pp r3.xzw, r0.z, r3, c3.x
    add_pp r1.xyz, r1.yzww, r3.xzww
    mul_pp r3.xzw, c58.w, c58.xyyz
    mul_pp r3.xzw, r0.y, r3
    cmp_pp r0.yzw, r0.y, r3.xxzw, c3.x
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mad_pp r1.xyz, r6.wyzw, c0.x, c0.x
    mul_pp r3.xzw, r6.wyyz, r6.wyyz
    mov r4.xyz, c79
    add r4.xyz, -r4, c80
    mad r4.xyz, r1.y, r4, c79
    mul r4.xyz, r3.z, r4
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r1.xyw, r1.x, r5.xyzz, c77.xyzz
    mad_pp r1.xyw, r3.x, r1, r4.xyzz
    mov r4.xyz, c81
    add r4.xyz, -r4, c82
    mad r4.xyz, r1.z, r4, c81
    mad_pp r1.xyz, r3.w, r4, r1.xyww
    mul_pp r3.xzw, r1.xyyz, c17.xyyz
    mul r3.xzw, r3, c70.w
    mad r1.xyz, r1, c17, -r3.xzww
    mad_pp r1.xyz, r3.y, r1, r3.xzww
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    cmp r1.xy, -r9_abs.x, v0, c3.x
    cmp r1.xy, -r9_abs.y, v0.zwzw, r1
    cmp r1.xy, -r9_abs.z, v1, r1
    cmp r1.xy, -r9_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v9.w
    mul_pp r3.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r4.x, c86.x
    mad r0.w, r0.w, c24.w, -r4.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r4.xyz, r0.w, r1, c3.y
    mad_pp r0.xyz, r0, r4, r2.xzww
    mul_pp r3.xyz, r0, v9
    mul_pp r0, r3, c89
    min_pp r1, r0, c2.x
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 292 instruction slots used (6 texture, 286 arithmetic)