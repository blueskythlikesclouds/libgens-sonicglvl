//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D s0;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   s0           s0       1
//

    ps_3_0
    def c0, 0.00389099144, 1.51991853e-005, 0.99609381, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    texld r0, v0, s0
    dp3_pp r0.x, r0.xyww, c0
    mov_pp oC0, r0.x
    mov_pp oDepth, r0.x

// approximately 4 instruction slots used (1 texture, 3 arithmetic)