//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_GISampler;
//   float4 g_PowerGlossLevel;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
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
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgInShadowScale         c64      1
//   g_SonicSkinFalloffParam  c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 10, 4, 1, -1
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s9
    dcl_2d s10
    mov r0.xz, c0
    mul_pp r0.x, r0.x, c20.y
    exp_pp r0.x, r0.x
    mul_pp r0.x, r0.x, c0.y
    add_pp r1.xyz, c22, -v1
    dp3_pp r0.y, r1, r1
    rsq_pp r0.y, r0.y
    mad_pp r2.xyz, r1, r0.y, -c10
    mul_pp r1.xyz, r0.y, r1
    nrm_pp r3.xyz, r2
    nrm_pp r2.xyz, v2
    dp3_sat_pp r0.y, r3, r2
    pow_pp r1.w, r0.y, r0.x
    texld r3, v0.zwzw, s10
    mul_pp r0.x, r3.w, c20.z
    mul_pp r0.x, r1.w, r0.x
    mul_pp r0.xyw, r0.x, c37.xyzz
    mul_pp r0.xyw, r0, c18.xyzz
    texld_pp r4, v0, s1
    mul_pp r0.xyw, r0, r4.xyzz
    mul_pp r0.xyw, r0, v2.w
    dp3_sat_pp r1.w, r2, -c10
    dp3_pp r1.x, r2, r1
    mul r1.y, r1.w, r3.w
    mul_pp r1.yzw, r1.y, c36.xxyz
    mul_pp r2.xyz, r3, r3
    mad_pp r1.yzw, r2.xxyz, c17.xxyz, r1
    mul_pp r1.yzw, r1, c16.xxyz
    texld_pp r2, v0, s0
    mad_pp r0.xyw, r1.yzzw, r2.xyzz, r0
    mul_pp r1.y, r2.w, c16.w
    mad r1.y, r1.y, v4.w, c0.w
    mad_pp oC0.w, c16.y, r1.y, r0.z
    add_pp r0.z, r0.z, c150.w
    add_sat_pp r0.z, -r1.x, r0.z
    pow_pp r1.x, r0.z, c150.z
    mad_pp r0.z, c150.y, r1.x, c150.x
    mul_pp r1.xyz, r0.z, v4
    mul r0.z, c64.w, c64.y
    mov r2.yw, c64
    mad r1.w, r2.y, -r2.w, r2.w
    mad_pp r0.z, r3.w, r1.w, r0.z
    mad_pp r0.xyz, r1, r0.z, r0.xyww
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    mul_pp oC0.xyz, r0, c16

// approximately 54 instruction slots used (4 texture, 50 arithmetic)
