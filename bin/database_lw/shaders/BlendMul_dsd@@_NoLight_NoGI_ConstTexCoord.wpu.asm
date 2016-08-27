//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   sampler2D sampDLScatter;
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampSpe0;
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
//   g_aLightField            c77      6
//   sampDif0                 s0       1
//   sampDif1                 s1       1
//   sampSpe0                 s2       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.5, 10, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s9
    texld_pp r0, v0, s0
    texld_pp r1, v1, s1
    mul_pp r0, r0, r1
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v5.w
    nrm_pp r1.xyz, v3
    mad_pp r2.xyz, r1, c0.x, c0.x
    mov r3.xyz, c80
    mad r3.xyz, r3, r2.y, c79
    mul_pp r4.xyz, r1, r1
    mul r3.xyz, r3, r4.y
    mov r5, c77
    mad r2.xyw, c78.xyzz, r2.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r2.z, c81
    mad_pp r2.xyz, r4.x, r2.xyww, r3
    mad_pp r2.xyz, r4.z, r5, r2
    dp3_sat_pp r0.w, r1, -c10
    mul r0.w, r0.w, c77.w
    mul_pp r3.xyz, r0.w, c36
    mad_pp r2.xyz, r2, c17, r3
    mul_pp r2.xyz, r2, c16
    add_pp r3.xyz, c22, -v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mad_pp r3.xyz, r3, r0.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.w, r4, r1
    mov r1.y, c0.y
    mul_pp r1.x, r1.y, c20.y
    exp_pp r1.x, r1.x
    mul_pp r1.x, r1.x, c0.z
    pow_pp r2.w, r0.w, r1.x
    mul_pp r0.w, r5.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mul_pp r1.xyz, r0.w, c37
    mul_pp r1.xyz, r1, c18
    texld_pp r3, v0, s2
    mul_pp r1.xyz, r1, r3
    mul_pp r1.xyz, r1, v3.w
    mad_pp r0.xyz, r2, r0, r1
    mul_pp r0.xyz, r0, v5
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 50 instruction slots used (4 texture, 46 arithmetic)