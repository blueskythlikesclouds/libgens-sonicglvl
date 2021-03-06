//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Param;
//   float4 g_Param2;
//   float4 g_Param3;
//   sampler2D s0;
//   sampler2D sampNoise;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   g_Param      c150     1
//   g_Param2     c151     1
//   g_Param3     c152     1
//   s0           s0       1
//   sampNoise    s4       1
//

    ps_3_0
    def c0, 0.796178341, 0, 0.0199999996, -1
    def c1, 0.111111112, 0.5, 1, 0
    def c2, 1.57000005, 0.125, 0.25, 0.875
    def c3, 0.375, 0.5, 0.625, 0.75
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s4
    mul r0.xy, c0, v0.y
    texld r0, r0, s4
    add r0.yz, c151.xxyw, -v0.xxyw
    dp2add r0.w, r0.yzzw, r0.yzzw, c0.y
    rsq r0.w, r0.w
    rcp r1.x, r0.w
    mul r0.yz, r0.w, r0
    mad r0.x, r0.x, c0.z, r1.x
    mul r0.w, r1.x, c152.y
    rcp r0.w, r0.w
    add r0.x, r0.x, -c152.x
    mul r0.x, r0.w, r0.x
    max r1.x, r0.x, c0.w
    add r0.x, r1.x, c0.w
    mul r0.w, r1.x, c2.x
    cmp r0.x, r0.x, c2.x, r0.w
    sincos r1.x, r0.x
    mul r0.x, r1.x, c152.z
    mad r0.w, r1.x, c1.y, c1.z
    mad r0.xy, r0.yzzw, r0.x, v0
    texld r1, r0, s0
    mov r2.x, c150.x
    mul r3.x, r2.x, c151.z
    mul r3.y, r2.x, -c151.w
    mul r2.xy, r3, v0.y
    mad r2.zw, r3.xyxy, v0.y, r0.xyxy
    texld r3, r2.zwzw, s0
    mad r4, r2.xyxy, c2.yyzz, r0.xyxy
    texld r5, r4, s0
    texld r4, r4.zwzw, s0
    add r5, r1, r5
    add r4, r4, r5
    mad r5, r2.xyxy, c3.xxyy, r0.xyxy
    texld r6, r5, s0
    texld r5, r5.zwzw, s0
    add r4, r4, r6
    add r4, r5, r4
    mad r5, r2.xyxy, c3.zzww, r0.xyxy
    mad r0.xy, r2, c2.w, r0
    texld r2, r0, s0
    texld r6, r5, s0
    texld r5, r5.zwzw, s0
    add r4, r4, r6
    add r4, r5, r4
    add r2, r2, r4
    add r2, r3, r2
    mad r2, r2, c1.x, -r1
    mad r1, c150.y, r2, r1
    mul oC0, r0.w, r1

// approximately 57 instruction slots used (10 texture, 47 arithmetic)
