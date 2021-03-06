//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
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
//   sampler2D sampDLScatter;
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//   sampler2D sampSpe0;
//   sampler2D sampSpe1;
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
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   sampDif0                 s0       1
//   sampDif1                 s1       1
//   sampSpe0                 s2       1
//   sampSpe1                 s3       1
//   sampNrm0                 s4       1
//   sampNrm1                 s5       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    def c1, 10, 4, 0, 0
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
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    texld_pp r1, v1, s1
    lrp_pp r2, v7.w, r0, r1
    mul_pp oC0.w, r2.w, c16.w
    add_pp r0.xyz, -c50, v2
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c52.z, c52.w
    mul r1.xyz, r0.w, c51
    add_pp r3.xyz, -c42, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r4.xyz, r0.w, c43
    add_pp r5.xyz, -c46, v2
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r6.xyz, r0.w, c47
    nrm_pp r7.xyz, v6
    texld_pp r8, v0, s4
    texld_pp r9, v1, s5
    lrp_pp r10.yzw, v7.w, r8.xxyw, r9.xxyw
    mul_pp r10.x, r10.w, r10.y
    mad_pp r8.xy, r10.xzzw, c0.x, c0.y
    mul_pp r7.xyz, r7, r8.y
    nrm_pp r9.xyz, v5
    mad_pp r7.xyz, r8.x, r9, r7
    dp2add_pp r0.w, r8, -r8, c0.z
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r8.xyz, v3
    mad_pp r7.xyz, r0.w, r8, r7
    add r8.xyz, c22, -v2
    dp3 r0.w, r8, r8
    rsq r0.w, r0.w
    mad_pp r9.xyz, r8, r0.w, -r5
    dp3_sat_pp r1.w, r7, -r5
    mul_pp r5.xyz, r6, r1.w
    nrm_pp r10.xyz, r9
    dp3_sat_pp r1.w, r10, r7
    mov r9.yz, c20
    mul_pp r2.w, r9.y, c1.x
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c1.y
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r6.xyz, r6, r1.w
    mad_pp r9.xyw, r8.xyzz, r0.w, -r3.xyzz
    dp3_sat_pp r1.w, r7, -r3
    mad_pp r3.xyz, r1.w, r4, r5
    nrm_pp r5.xyz, r9.xyww
    dp3_sat_pp r1.w, r5, r7
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r4.xyz, r1.w, r4, r6
    mad_pp r5.xyz, r8, r0.w, -r0
    dp3_sat_pp r0.x, r7, -r0
    mad_pp r0.xyz, r0.x, r1, r3
    nrm_pp r3.xyz, r5
    dp3_sat_pp r1.w, r3, r7
    pow_pp r3.x, r1.w, r2.w
    mul_pp r1.w, r3.x, c20.z
    mad_pp r1.xyz, r1.w, r1, r4
    add_pp r3.xyz, -c54, v2
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    rcp_pp r3.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    mad_sat_pp r1.w, -r3.w, c56.z, c56.w
    mul r4.xyz, r1.w, c55
    mad_pp r5.xyz, r8, r0.w, -r3
    dp3_sat_pp r1.w, r7, -r3
    mad_pp r0.xyz, r1.w, r4, r0
    nrm_pp r3.xyz, r5
    dp3_sat_pp r1.w, r3, r7
    pow_pp r3.x, r1.w, r2.w
    mul_pp r1.w, r3.x, c20.z
    mad_pp r1.xyz, r1.w, r4, r1
    mad_pp r3.xyz, r8, r0.w, -c10
    mul_pp r4.xyz, r0.w, r8
    rcp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c60.z, c60.w
    nrm_pp r5.xyz, r3
    dp3_sat_pp r1.w, r5, r7
    pow_pp r3.x, r1.w, r2.w
    mul_pp r1.w, r9.z, c77.w
    mul_pp r1.w, r3.x, r1.w
    mad_pp r1.xyz, r1.w, c37, r1
    add_pp r3.xyz, r4, r4
    dp3_sat_pp r1.w, r7, r4
    nrm_pp r4.xyz, r3
    dp3_sat_pp r3.x, r4, r7
    pow_pp r4.x, r3.x, r2.w
    mul_pp r2.w, r4.x, c20.z
    mul_pp r3.xyz, r0.w, c59
    mul r4.xyz, r0.w, c58
    mad_pp r1.xyz, r2.w, r3, r1
    mul_pp r1.xyz, r1, c18
    texld_pp r3, v0, s2
    texld_pp r5, v1, s3
    lrp_pp r6.xyz, v7.w, r3, r5
    mul_pp r1.xyz, r1, r6
    mul_pp r1.xyz, r1, v3.w
    dp3_sat_pp r0.w, r7, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r0.xyz, r0.w, c36, r0
    mad_pp r0.xyz, r1.w, r4, r0
    mad_pp r3.xyz, r7, c0.w, c0.w
    mul_pp r4.xyz, r7, r7
    mov r5.xyz, c80
    mad r5.xyz, r5, r3.y, c79
    mul r5.xyz, r4.y, r5
    mov r6.xyz, c77
    mad r3.xyw, c78.xyzz, r3.x, r6.xyzz
    mov r6.xyz, c82
    mad r6.xyz, r6, r3.z, c81
    mad_pp r3.xyz, r4.x, r3.xyww, r5
    mad_pp r3.xyz, r4.z, r6, r3
    mad_pp r0.xyz, r3, c17, r0
    mul_pp r0.xyz, r0, c16
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.w, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 168 instruction slots used (8 texture, 160 arithmetic)
