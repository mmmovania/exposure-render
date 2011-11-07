/*
	Copyright (c) 2011, T. Kroes <t.kroes@tudelft.nl>
	All rights reserved.

	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

	- Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
	- Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
	- Neither the name of the TU Delft nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
	
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#pragma once

#include "Geometry.h"

#include "Buffer.cuh"

struct EXPOSURE_RENDER_DLL Denoise
{
	float	m_Enabled;
	float	m_WindowRadius;
	float	m_WindowArea;
	float	m_InvWindowArea;
	float	m_Noise;
	float	m_WeightThreshold;
	float	m_LerpThreshold;
	float	m_LerpC;
};

struct EXPOSURE_RENDER_DLL Camera
{
	Vec3f		m_Pos;
	Vec3f		m_Target;
	Vec3f		m_Up;
	Vec3f		m_N;
	Vec3f		m_U;
	Vec3f		m_V;
	float		m_FocalDistance;
	float		m_ApertureSize;
	float3		m_ClipNear;
	float3		m_ClipFar;
	float		m_Screen[2][2];
	float2		m_InvScreen;
};

struct EXPOSURE_RENDER_DLL RenderInfo
{
	int			m_FilmWidth;
	int			m_FilmHeight;
	int			m_FilmNoPixels;
	int			m_FilterWidth;
	float		m_FilterWeights[10];
	float		m_Exposure;
	float		m_InvExposure;
	float		m_Gamma;
	float		m_InvGamma;
	float		m_NoIterations;
	float		m_InvNoIterations;
	bool		m_Shadows;
	Denoise		m_Denoise;
	Camera		m_Camera;
};