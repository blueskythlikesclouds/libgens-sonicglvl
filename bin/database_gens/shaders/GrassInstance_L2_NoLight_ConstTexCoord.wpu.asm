//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ForceAlphaColor;
//   float4 g_LightScatteringColor;
//   float4 mrgGlobalLight_Diffuse;
//   sampler2D s0;
//
//
// Registers:
//
//   Name                   Reg   Size
//   ---------------------- ----- ----
//   mrgGlobalLight_Diffuse c36      1
//   g_LightScatteringColor c75      1
//   g_ForceAlphaColor      c89      1
//   s0                     s0       1
//

    ps_3_0
    def c0, -0.5, 4, 0, 0
    dcl_texcoord_centroid v0.xy
    dcl_texcoord1_pp v1.xy
    dcl_color_pp v2
    dcl_2d s0
    texld_pp r0, v0, s0
    add_pp r1, r0.w, c0.x
    texkill r1
    mad_pp r1.xyz, c36, v2.w, v2
    mul_pp r0.xyz, r0, r1
    mul_pp r0, r0, c89
    min_pp r1, r0, c0.y
    mul_pp r0.xyz, c75, v1.y
    mad_pp oC0.xyz, r1, v1.x, r0
    mov_pp oC0.w, r1.w

// approximately 10 instruction slots used (1 texture, 9 arithmetic)