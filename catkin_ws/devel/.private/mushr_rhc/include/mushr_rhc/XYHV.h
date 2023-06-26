// Generated by gencpp from file mushr_rhc/XYHV.msg
// DO NOT EDIT!


#ifndef MUSHR_RHC_MESSAGE_XYHV_H
#define MUSHR_RHC_MESSAGE_XYHV_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mushr_rhc
{
template <class ContainerAllocator>
struct XYHV_
{
  typedef XYHV_<ContainerAllocator> Type;

  XYHV_()
    : x(0.0)
    , y(0.0)
    , h(0.0)
    , v(0.0)  {
    }
  XYHV_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , h(0.0)
    , v(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _h_type;
  _h_type h;

   typedef double _v_type;
  _v_type v;





  typedef boost::shared_ptr< ::mushr_rhc::XYHV_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mushr_rhc::XYHV_<ContainerAllocator> const> ConstPtr;

}; // struct XYHV_

typedef ::mushr_rhc::XYHV_<std::allocator<void> > XYHV;

typedef boost::shared_ptr< ::mushr_rhc::XYHV > XYHVPtr;
typedef boost::shared_ptr< ::mushr_rhc::XYHV const> XYHVConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mushr_rhc::XYHV_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mushr_rhc::XYHV_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mushr_rhc::XYHV_<ContainerAllocator1> & lhs, const ::mushr_rhc::XYHV_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.h == rhs.h &&
    lhs.v == rhs.v;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mushr_rhc::XYHV_<ContainerAllocator1> & lhs, const ::mushr_rhc::XYHV_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mushr_rhc

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mushr_rhc::XYHV_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mushr_rhc::XYHV_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mushr_rhc::XYHV_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mushr_rhc::XYHV_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mushr_rhc::XYHV_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mushr_rhc::XYHV_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mushr_rhc::XYHV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0cafccb00bc1c3b48904a8807acc6293";
  }

  static const char* value(const ::mushr_rhc::XYHV_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0cafccb00bc1c3b4ULL;
  static const uint64_t static_value2 = 0x8904a8807acc6293ULL;
};

template<class ContainerAllocator>
struct DataType< ::mushr_rhc::XYHV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mushr_rhc/XYHV";
  }

  static const char* value(const ::mushr_rhc::XYHV_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mushr_rhc::XYHV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 h\n"
"float64 v\n"
;
  }

  static const char* value(const ::mushr_rhc::XYHV_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mushr_rhc::XYHV_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.h);
      stream.next(m.v);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct XYHV_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mushr_rhc::XYHV_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mushr_rhc::XYHV_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "h: ";
    Printer<double>::stream(s, indent + "  ", v.h);
    s << indent << "v: ";
    Printer<double>::stream(s, indent + "  ", v.v);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MUSHR_RHC_MESSAGE_XYHV_H