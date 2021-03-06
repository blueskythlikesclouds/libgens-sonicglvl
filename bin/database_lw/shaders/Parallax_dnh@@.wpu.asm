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
//   sampler2D g_GISampler;
//   float4 g_ParallaxParam;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
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
//   sampler2D sampDif;
//   sampler2D sampHeight;
//   sampler2D sampNrm;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
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
//   mrgEyeLight_Range        c60      1
//   g_GIModeParam            c69      1
//   g_ParallaxParam          c150     1
//   sampDif                  s0       1
//   sampNrm                  s3       1
//   sampHeight               s4       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4_pp v3
    dcl_texcoord5_pp v4
    dcl_texcoord7 v5.xy
    dcl_color_pp v6
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    mov_pp r0.z, v4.w
    mov_pp r0.x, v2.w
    mov_pp r0.y, v3.w
    dp3_pp r0.z, r0, r0
    rsq_pp r0.z, r0.z
    mul_pp r0.xy, r0.z, r0
    texld_pp r1, v0, s4
    mad_pp r0.z, r1.y, c150.y, c150.x
    mad r0.xy, r0, r0.z, v0
    texld_pp r1, r0, s3
    texld_pp r0, r0, s0
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    nrm_pp r2.xyz, v3
    mul_pp r2.xyz, r1.y, r2
    nrm_pp r3.xyz, v2
    mad_pp r2.xyz, r1.x, r3, r2
    dp2add_sat_pp r1.x, r1, r1, c0.z
    add r1.x, -r1.x, c0.w
    rsq r1.x, r1.x
    rcp_pp r1.x, r1.x
    nrm_pp r3.xyz, v4
    mad_pp r1.xyz, r1.x, r3, r2
    add_pp r2.xyz, -c46, v1
    dp3_pp r1.w, r2, r2
    rsq_pp r1.w, r1.w
    mul_pp r2.xyz, r1.w, r2
    rcp_pp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c48.z, c48.w
    mul r3.xyz, r1.w, c47
    dp3_sat_pp r1.w, r1, -r2
    mul_pp r2.xyz, r3, r1.w
    add_pp r3.xyz, -c42, v1
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    rcp_pp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c44.z, c44.w
    mul r4.xyz, r1.w, c43
    dp3_sat_pp r1.w, r1, -r3
    mad_pp r2.xyz, r1.w, r4, r2
    add_pp r3.xyz, -c50, v1
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    rcp_pp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c52.z, c52.w
    mul r4.xyz, r1.w, c51
    dp3_sat_pp r1.w, r1, -r3
    mad_pp r2.xyz, r1.w, r4, r2
    add_pp r3.xyz, -c54, v1
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    rcp_pp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c56.z, c56.w
    mul r4.xyz, r1.w, c55
    dp3_sat_pp r1.w, r1, -r3
    mad_pp r2.xyz, r1.w, r4, r2
    dp3_sat_pp r1.w, r1, -c10
    texld_pp r3, v0.zwzw, s10
    mul r1.w, r1.w, r3.w
    mul_pp r3.xyz, r3, r3
    mad_pp r2.xyz, r1.w, c36, r2
    add r4.xyz, c22, -v1
    dp3 r1.w, r4, r4
    rsq r1.w, r1.w
    mul_pp r4.xyz, r1.w, r4
    rcp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    mul r5.xyz, r1.w, c58
    dp3_sat_pp r1.x, r1, r4
    mad_pp r1.xyz, r1.x, r5, r2
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r1.xyz, r0, r1
    mul_pp r1.w, r0.w, c16.w
    mul_pp r0, r1, v6
    texld_pp r1, v5.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    mov_pp oC0.w, r0.w
    add r1.xy, c1.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v5.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 94 instruction slots used (6 texture, 88 arithmetic)
