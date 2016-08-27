//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D g_DepthSampler;
//   sampler2D g_FramebufferSampler;
//   row_major float4x4 g_MtxView;
//   float4 g_ViewportSize;
//   float4 mrgDistortionParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   g_ViewportSize       c24      1
//   mrgTexcoordIndex     c26      1
//   g_MtxView            c90      3
//   mrgDistortionParam   c150     1
//   sampDif              s0       1
//   sampNrm              s1       1
//   sampNrm2             s2       1
//   sampDLScatter        s9       1
//   g_FramebufferSampler s11      1
//   g_DepthSampler       s12      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 1
    def c1, 0.00389099144, 1.51991853e-005, 0.99609381, 0
    def c2, 0, 1, 2, 3
    def c3, 0.5, -0.5, 0, 0
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4.xy
    dcl_texcoord8 v5.xyz
    dcl_color_pp v6
    dcl_texcoord6_pp v7.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s9
    dcl_2d s11
    dcl_2d s12
    frc r0.xyz, c26.xzww
    cmp r1.xyz, -r0, c2.x, c2.y
    add r0.xyz, -r0, c26.xzww
    mov r2.x, c2.x
    cmp r1.xyz, c26.xzww, r2.x, r1
    add r0.xyz, r0, r1
    add r1, r0.x, -c2
    cmp r0.xw, -r1_abs.x, v0.xyzy, c2.x
    cmp r0.xw, -r1_abs.y, v0.zyzw, r0
    cmp r0.xw, -r1_abs.z, v1.xyzy, r0
    cmp r0.xw, -r1_abs.w, v1.zyzw, r0
    texld_pp r1, r0.xwzw, s0
    mul_pp oC0.w, r1.w, v6.w
    add r2, r0.y, -c2
    add r0, r0.z, -c2
    cmp r3.xy, -r2_abs.x, v0, c2.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r3
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld r2, r2, s1
    cmp r3.xy, -r0_abs.x, v0, c2.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r3
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld r0, r0, s2
    lrp_pp r3.yzw, c0.x, r0.xxyw, r2.xxyw
    mul_pp r3.x, r3.w, r3.y
    mad_pp r0.xy, r3.xzzw, c0.y, c0.z
    nrm_pp r2.xyz, v5
    mul_pp r2.xyz, r0.y, r2
    nrm_pp r3.xyz, v3
    mad_pp r2.xyz, r0.x, r3, r2
    dp2add_sat_pp r0.x, r0, r0, c2.x
    add r0.x, -r0.x, c2.y
    rsq r0.x, r0.x
    rcp_pp r0.x, r0.x
    nrm_pp r3.xyz, v2
    mad_pp r0.xyz, r0.x, r3, r2
    mul_pp r0.yw, r0.y, c91.xxzy
    mad_pp r0.xy, r0.x, c90, r0.ywzw
    mad_pp r0.xy, r0.z, c92, r0
    mul_pp r0.xy, r0, c150.w
    dp2add_pp r2.x, vPos.x, c24.z, r0.x
    mul r0.x, c24.w, vPos.y
    mad_pp r2.y, r0.x, -c2.z, r0.y
    add r0.xy, r2, c0.zwzw
    mad r0.xy, r0, c3, c3.x
    texld_pp r2, r0, s11
    texld r0, r0, s12
    dp3 r0.x, r0.xyww, c1
    add_pp r0.yzw, -r2.xxyz, c2.y
    add_pp r0.yzw, r0, r0
    add_pp r3.xyz, -r1, c2.y
    mul_pp r1.xyz, r1, r2
    add r2.xyz, r2, -c150.z
    add_pp r1.xyz, r1, r1
    cmp_pp r1.xyz, r2, c2.x, r1
    mad_pp r0.yzw, r0, -r3.xxyz, c2.y
    cmp_pp r0.yzw, r2.xxyz, r0, c2.x
    add_pp r0.yzw, r0, r1.xxyz
    rcp r1.x, v7.y
    mad r0.x, v7.x, -r1.x, r0.x
    mad_pp r1.x, v7.x, -r1.x, c2.y
    rcp r1.x, r1.x
    mul r1.x, r1.x, c150.y
    max r1.y, r0.x, c2.x
    mul_pp r0.x, r1.x, r1.y
    lrp_pp r1.xyz, r0.x, v6, r0.yzww
    texld_pp r0, v4.yxzw, s9
    mad_pp oC0.xyz, r1, r0.w, r0

// approximately 78 instruction slots used (6 texture, 72 arithmetic)