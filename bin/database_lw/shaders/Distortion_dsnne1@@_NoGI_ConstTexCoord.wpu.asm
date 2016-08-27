//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
//   sampler2D sampSpe;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgLocalLight1_Position  c42      1
//   mrgLocalLight1_Color     c43      1
//   mrgLocalLight1_Range     c44      1
//   mrgLocalLight2_Position  c46      1
//   mrgLocalLight2_Color     c47      1
//   mrgLocalLight2_Range     c48      1
//   mrgLocalLight3_Position  c50      1
//   mrgLocalLight3_Color     c51      1
//   mrgLocalLight3_Range     c52      1
//   mrgLocalLight4_Position  c54      1
//   mrgLocalLight4_Color     c55      1
//   mrgLocalLight4_Range     c56      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s3       1
//   sampNrm2                 s4       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 10, 4, 0.5, -0.5
    def c1, 0.5, 2, -1, 0
    def c2, 0.0500000007, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v7.w
    add_pp r1.xyz, -c42, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r2.xyz, r0.w, c43
    add_pp r3.xyz, -c46, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r4.xyz, r0.w, c47
    add_pp r5.xyz, c22, -v2
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    mad_pp r6.xyz, r5, r0.w, -r3
    nrm_pp r7.xyz, r6
    nrm_pp r6.xyz, v6
    texld r8, v1, s3
    texld r9, v1, s4
    lrp_pp r10.yzw, c1.x, r9.xxyw, r8.xxyw
    mul_pp r10.x, r10.w, r10.y
    mad_pp r8.xy, r10.xzzw, c1.y, c1.z
    mul_pp r6.xyz, r6, r8.y
    nrm_pp r9.xyz, v5
    mad_pp r6.xyz, r8.x, r9, r6
    dp2add_sat_pp r1.w, r8, r8, c1.w
    add r1.w, -r1.w, -c1.z
    rsq r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r8.xyz, v3
    mad_pp r6.xyz, r1.w, r8, r6
    dp3_sat_pp r1.w, r7, r6
    mov r7.x, c0.x
    mul_pp r2.w, r7.x, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c0.y
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r7.xyz, r4, r1.w
    mad_pp r8.xyz, r5, r0.w, -r1
    dp3_sat_pp r1.x, r6, -r1
    nrm_pp r9.xyz, r8
    dp3_sat_pp r1.y, r9, r6
    pow_pp r3.w, r1.y, r2.w
    mul_pp r1.y, r3.w, c20.z
    mad_pp r1.yzw, r1.y, r2.xxyz, r7.xxyz
    add_pp r7.xyz, -c50, v2
    dp3_pp r3.w, r7, r7
    rsq_pp r3.w, r3.w
    rcp_pp r4.w, r3.w
    mul_pp r7.xyz, r3.w, r7
    mad_sat_pp r3.w, -r4.w, c52.z, c52.w
    mul r8.xyz, r3.w, c51
    mad_pp r9.xyz, r5, r0.w, -r7
    dp3_sat_pp r3.w, r6, -r7
    nrm_pp r7.xyz, r9
    dp3_sat_pp r4.w, r7, r6
    pow_pp r5.w, r4.w, r2.w
    mul_pp r4.w, r5.w, c20.z
    mad_pp r1.yzw, r4.w, r8.xxyz, r1
    add_pp r7.xyz, -c54, v2
    dp3_pp r4.w, r7, r7
    rsq_pp r4.w, r4.w
    rcp_pp r5.w, r4.w
    mul_pp r7.xyz, r4.w, r7
    mad_sat_pp r4.w, -r5.w, c56.z, c56.w
    mul r9.xyz, r4.w, c55
    mad_pp r10.xyz, r5, r0.w, -r7
    dp3_sat_pp r4.w, r6, -r7
    mad_pp r5.xyz, r5, r0.w, -c10
    nrm_pp r7.xyz, r5
    dp3_sat_pp r0.w, r7, r6
    pow_pp r5.x, r0.w, r2.w
    nrm_pp r7.xyz, r10
    dp3_sat_pp r0.w, r7, r6
    pow_pp r5.y, r0.w, r2.w
    mul_pp r0.w, r5.y, c20.z
    mad_pp r1.yzw, r0.w, r9.xxyz, r1
    mov r7, c77
    mul_pp r0.w, r7.w, c20.z
    mul_pp r0.w, r5.x, r0.w
    mad_pp r1.yzw, r0.w, c37.xxyz, r1
    mul r5, r6.y, c91
    mad r5, r6.x, c90, r5
    mad r5, r6.z, c92, r5
    dp4 r0.w, r5, r5
    rsq r0.w, r0.w
    mul r5.zw, r0.w, r5.xyxy
    mad_pp r5.zw, r5, c0, c0.z
    texld_pp r10, r5.zwzw, s5
    mul r0.w, c64.z, c64.x
    mov r11.xz, c64
    mad r2.w, r11.x, -r11.z, r11.z
    mad_pp r0.w, c77.w, r2.w, r0.w
    texld r11, v0, s1
    mul r2.w, r11.w, c63.x
    mul r0.w, r0.w, r2.w
    mul_pp r10.xyz, r0.w, r10
    mad_pp r1.yzw, r1, c18.xxyz, r10.xxyz
    mul_pp r1.yzw, r11.xxyz, r1
    mul_pp r1.yzw, r1, v3.w
    dp3_sat_pp r0.w, r6, -r3
    mul_pp r3.xyz, r4, r0.w
    mad_pp r2.xyz, r1.x, r2, r3
    mad_pp r2.xyz, r3.w, r8, r2
    mad_pp r2.xyz, r4.w, r9, r2
    dp3_sat_pp r0.w, r6, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r2.xyz, r0.w, c36, r2
    mad_pp r3.xyz, r6, c1.x, c1.x
    mul_pp r4.xyz, r6, r6
    mov r6.xyz, c80
    mad r6.xyz, r6, r3.y, c79
    mul r6.xyz, r4.y, r6
    mad r3.xyw, c78.xyzz, r3.x, r7.xyzz
    mov r7.xyz, c82
    mad r7.xyz, r7, r3.z, c81
    mad_pp r3.xyz, r4.x, r3.xyww, r6
    mad_pp r3.xyz, r4.z, r7, r3
    mad_pp r2.xyz, r3, c17, r2
    mul_pp r2.xyz, r2, c16
    mad_pp r0.xyz, r2, r0, r1.yzww
    mul r0.w, c24.w, vPos.y
    mad_pp r1.y, r0.w, -c1.y, -c1.z
    mov r1.z, c1.z
    dp2add_pp r1.x, vPos.x, c24.z, r1.z
    mad_pp r1.xy, r5, c2.x, r1
    mad r1.xy, r1, c0.zwzw, c0.z
    texld_pp r1, r1, s11
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 167 instruction slots used (7 texture, 160 arithmetic)