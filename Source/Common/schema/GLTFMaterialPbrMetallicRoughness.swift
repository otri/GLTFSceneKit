//
// GLTFMaterialPbrMetallicRoughness.swift
//
// Material PBR Metallic Roughness
// A set of parameter values that are used to define the metallic-roughness material model from Physically-Based Rendering (PBR) methodology.
//

import Foundation

struct GLTFMaterialPbrMetallicRoughness : Codable {

  /** The RGBA components of the base color of the material. The fourth component (A) is the alpha coverage of the material. The `alphaMode` property specifies how alpha is interpreted. These values are linear. If a baseColorTexture is specified, this value is multiplied with the texel values. */
  let baseColorFactor: [Float] = [1,1,1,1]

  /** The base color texture. This texture contains RGB(A) components in sRGB color space. The first three components (RGB) specify the base color of the material. If the fourth component (A) is present, it represents the alpha coverage of the material. Otherwise, an alpha of 1.0 is assumed. The `alphaMode` property specifies how alpha is interpreted. The stored texels must not be premultiplied. */
  let baseColorTexture: GLTFTextureInfo?

  /** The metalness of the material. A value of 1.0 means the material is a metal. A value of 0.0 means the material is a dielectric. Values in between are for blending between metals and dielectrics such as dirty metallic surfaces. This value is linear. If a metallicRoughnessTexture is specified, this value is multiplied with the metallic texel values. */
  let metallicFactor: Float = 1

  /** The roughness of the material. A value of 1.0 means the material is completely rough. A value of 0.0 means the material is completely smooth. This value is linear. If a metallicRoughnessTexture is specified, this value is multiplied with the roughness texel values. */
  let roughnessFactor: Float = 1

  /** The metallic-roughness texture. The metalness values are sampled from the B channel. The roughness values are sampled from the G channel. These values are linear. If other channels are present (R or A), they are ignored for metallic-roughness calculations. */
  let metallicRoughnessTexture: GLTFTextureInfo?

  let extensions: GLTFExtension?

  let extras: GLTFExtras?
}
