//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_Emission;
//   float4 g_EnmCarPaint;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   row_major float4x4 g_MtxView;
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
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampEnv2;
//   sampler2D sampFlake;
//   sampler2D sampLame;
//   sampler2D sampNrm;
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
//   g_Emission               c19      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   g_EnmCarPaint            c150     1
//   sampDif                  s0       1
//   sampFlake                s1       1
//   sampSpe                  s2       1
//   sampEnv                  s3       1
//   sampEnv2                 s4       1
//   sampNrm                  s5       1
//   sampLame                 s6       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 10, 4, -0.5
    def c1, 2, -1, 0, 1
    def c2, 0.25, 0, 0, 0
    def c3, 1, -1, 0, 0.5
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
    dcl_2d s6
    dcl_2d s9
    dcl_2d s11
    nrm_pp r0, v6.xyzx
    texld_pp r1, v1, s5
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c1.x, c1.y
    mul_pp r0, r0, r1.y
    nrm_pp r2, v5.xyzx
    mad_pp r0, r1.x, r2, r0
    dp2add_sat_pp r1.x, r1, r1, c1.z
    add r1.x, -r1.x, c1.w
    rsq r1.x, r1.x
    rcp_pp r1.x, r1.x
    nrm_pp r2, v3.xyzx
    mad_pp r0, r1.x, r2, r0
    mul r1, r0.y, c91
    mad r1, r0.w, c90, r1
    mad r1, r0.z, c92, r1
    dp4 r1.z, r1, r1
    rsq r1.z, r1.z
    mul r1.xy, r1.z, r1
    mad_pp r1.xy, r1, c0.xwzw, c0.x
    texld_pp r1, r1, s3
    mul_pp r1.xyz, r1, c63.x
    texld_pp r2, v0, s2
    mul_pp r1.xyz, r1, r2
    mul r3, c150.xxyy, v0.xyxy
    texld r4, r3, s1
    texld r3, r3.zwzw, s6
    mul_pp r1.xyz, r1, r4
    add r4, c22.xyzx, -v2.xyzx
    dp3 r1.w, r4.yzww, r4.yzww
    rsq r1.w, r1.w
    mul_pp r5, r1.w, r4
    mad_pp r2.xyz, r4, r1.w, -c10
    rcp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    nrm_pp r4.xyz, r2
    dp3_sat_pp r2.x, r4, r0
    dp3_pp r2.y, r0.yzww, r5.yzww
    add_pp r2.z, r2.y, r2.y
    mov_sat_pp r2.y, r2.y
    mad_pp r4, r2.z, r0, -r5
    add_pp r5.xyz, r5.wyzw, r5.wyzw
    nrm_pp r6.xyz, r5
    dp3_sat_pp r0.x, r6, r0
    mul_pp r5, r4.wyzw, c1.yywz
    mad_pp r6, r4, c3.xyyz, c3.zzzw
    cmp_pp r4, r4.z, r5, r6
    add_pp r2.z, r4.z, c1.w
    rcp r2.z, r2.z
    mad_pp r4.xy, r4.yxzw, r2.z, c1.w
    mad_pp r5.x, r4.y, c2.x, r4.w
    mul_pp r5.y, r4.x, c0.x
    texld_pp r4, r5, s4
    mul_pp r4.xyz, r4, c63.x
    mul r2.z, c64.z, c64.x
    mov r5.xz, c64
    mad r3.w, r5.x, -r5.z, r5.z
    mad_pp r2.z, c77.w, r3.w, r2.z
    mul_pp r4.xyz, r2.z, r4
    mul_pp r3.xyz, r3, r4
    mul_pp r3.xyz, r2.w, r3
    mad_pp r1.xyz, r1, r2.z, r3
    mul_pp r3.xyz, r1.w, c59
    mul r4.xyz, r1.w, c58
    mul_pp r4.xyz, r2.y, r4
    mov r5.y, c0.y
    mul_pp r1.w, r5.y, c20.y
    exp_pp r1.w, r1.w
    mul_pp r1.w, r1.w, c0.z
    pow_pp r2.z, r0.x, r1.w
    pow_pp r0.x, r2.x, r1.w
    mul_pp r1.w, r2.z, c20.z
    mul_pp r3.xyz, r3, r1.w
    mov r5, c77
    mul_pp r1.w, r5.w, c20.z
    mul_pp r0.x, r0.x, r1.w
    mad_pp r3.xyz, r0.x, c37, r3
    mul_pp r3.xyz, r3, c18
    mad_pp r1.xyz, r3, r2.w, r1
    mul_pp r1.xyz, r1, v3.w
    mad_pp r2.xzw, r0.wyyz, c0.x, c0.x
    mov r3.xyz, c80
    mad r3.xyz, r3, r2.z, c79
    mul_pp r6.xyz, r0.wyzw, r0.wyzw
    dp3_sat_pp r0.x, r0.wyzw, -c10
    mul r0.x, r0.x, c77.w
    mad_pp r0.xyz, r0.x, c36, r4
    mul r3.xyz, r3, r6.y
    mad r4.xyz, c78, r2.x, r5
    mov r5.xyz, c82
    mad r2.xzw, r5.xyyz, r2.w, c81.xyyz
    mad_pp r3.xyz, r6.x, r4, r3
    mad_pp r2.xzw, r6.z, r2, r3.xyyz
    mad_pp r0.xyz, r2.xzww, c17, r0
    mov r0.w, c1.w
    add r0.w, r0.w, -c150.z
    mad_pp r1.w, r2.y, -r0.w, c1.w
    mul_pp r0.w, r0.w, r2.y
    mul_pp r2.xyz, r1.w, c19
    mad_pp r2.xyz, c16, r0.w, r2
    mul_pp r0.xyz, r0, r2
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r0.w, r2.w, c16.w
    mul_pp r0, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    mov_pp oC0.w, r0.w
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 129 instruction slots used (9 texture, 120 arithmetic)