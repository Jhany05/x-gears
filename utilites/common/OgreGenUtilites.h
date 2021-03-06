#ifndef OGRE_GEN_UTILITES_H
#define OGRE_GEN_UTILITES_H

#include <Ogre.h>
#include "Logger.h"
#include "Vram.h"



struct MeshData
{
    Ogre::String    name;
    int             tex_width;
    int             tex_height;
};

enum BPP
{
    BPP_4 = 0,
    BPP_8 = 1,

    BPP_BLACK = -1
};


struct TexForGen
{
    u16 texture_x;
    u16 texture_y;
    u16 palette_y;
    u16 palette_x;
    BPP bpp;

    int start_x;
    int start_y;

    bool operator==( const TexForGen& i ) const
    {
        return i.texture_x == texture_x &&
               i.texture_y == texture_y &&
               i.palette_y == palette_y &&
               i.palette_x == palette_x &&
               i.bpp       == bpp;
    }
};

typedef std::vector< TexForGen > VectorTexForGen;



void CreateTexture( Vram* vram, const MeshData& mesh_data, const Ogre::String& texture_file_name, const VectorTexForGen& textures );
void CreateMaterial( const Ogre::String& material_name, const Ogre::String& material_file_name, const Ogre::String& texture_name, const Ogre::String& vertex_program, const Ogre::String& fragment_program );
void CreateTextureFromVram( const Ogre::PixelBox& pb, Vram* vram, const int start_x, const int start_y, const int width, const int height, const int clut_x, const int clut_y, const int texture_x, const int texture_y, const BPP bpp, const bool transparency );
void AddTexture( TexForGen& texture, const MeshData& data, VectorTexForGen& textures, Logger* logger );
void AddTransparency( u32& colour, const bool transparency, const bool stp );


#endif
