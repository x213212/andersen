// This file generated by ngrestcg
// For more information, please visit: https://github.com/loentar/ngrest
// DO NOT EDIT. ANY CHANGES WILL BE LOST

#include <ngrest/utils/PluginExport.h>
#include "TestServiceWrapper.h"
#include "ServiceGroupImpl.h"

NGREST_DECLARE_PLUGIN(::ngrest::ServiceGroupImpl)

namespace ngrest {


ServiceGroupImpl::ServiceGroupImpl():
    name("ngrest")
{
    services = {
        new ::ngrest::TestServiceWrapper()
    };
}

ServiceGroupImpl::~ServiceGroupImpl()
{
    for (::ngrest::ServiceWrapper* service : services)
        delete service;
    services.clear();
}

const std::string& ServiceGroupImpl::getName() const
{
    return name;
}

const std::vector< ::ngrest::ServiceWrapper*>& ServiceGroupImpl::getServices() const
{
    return services;
}


}


