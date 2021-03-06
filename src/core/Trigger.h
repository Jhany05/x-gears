#ifndef TRIGGER_H
#define TRIGGER_H

#include <OgreRoot.h>



class Trigger
{
public:
    Trigger( const Ogre::String& name );
    virtual ~Trigger();

    void UpdateDebug();

    const Ogre::String& GetName() const;

    void SetSquareTrigger( const Ogre::Vector3& point1, const Ogre::Vector3& point2, const Ogre::Vector3& point3, const Ogre::Vector3& point4 );

private:
    Ogre::String m_Name;

    Ogre::Vector3 m_Point1;
    Ogre::Vector3 m_Point2;
    Ogre::Vector3 m_Point3;
    Ogre::Vector3 m_Point4;
};



#endif // TRIGGER_H
