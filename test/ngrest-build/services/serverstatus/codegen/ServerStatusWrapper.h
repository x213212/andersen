// This file generated by ngrestcg
// For more information, please visit: https://github.com/loentar/ngrest
// DO NOT EDIT. ANY CHANGES WILL BE LOST

#ifndef NGREST_SERVERSTATUSWRAPPER_H
#define NGREST_SERVERSTATUSWRAPPER_H

#include <string>

#include <ngrest/engine/ServiceWrapper.h>
#include "ServerStatus.h"


namespace ngrest {


class ServerStatus;

//! ServerStatus service wrapper
class ServerStatusWrapper: public ::ngrest::ServiceWrapper
{
public:
    ServerStatusWrapper();
    virtual ~ServerStatusWrapper();

    virtual ::ngrest::Service* getServiceImpl() override;

    virtual void invoke(const ::ngrest::OperationDescription* operation, ::ngrest::MessageContext* context) override;

    virtual const ::ngrest::ServiceDescription* getDescription() const override;

private:
    ServerStatus* service;
};



}


#endif // NGREST_SERVERSTATUSWRAPPER_H

