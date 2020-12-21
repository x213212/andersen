// This file generated by ngrestcg
// For more information, please visit: https://github.com/loentar/ngrest
// DO NOT EDIT. ANY CHANGES WILL BE LOST

#include <ngrest/utils/Log.h>
#include <ngrest/utils/fromcstring.h>
#include <ngrest/utils/tostring.h>
#include <ngrest/utils/Exception.h>
#include <ngrest/common/ObjectModel.h>
#include <ngrest/common/ObjectModelUtils.h>
#include <ngrest/common/Message.h>
#include <ngrest/common/HttpMethod.h>
#include <ngrest/common/Service.h>
#include <ngrest/engine/ServiceDescription.h>
#include "CrudWrapper.h"



namespace ngrest {
namespace examples {


CrudWrapper::CrudWrapper():
    service(new Crud())
{
}

CrudWrapper::~CrudWrapper()
{
    delete service;
}


::ngrest::Service* CrudWrapper::getServiceImpl()
{
    return service;
}

void CrudWrapper::invoke(const ::ngrest::OperationDescription* operation, ::ngrest::MessageContext* context)
{
    if (operation->name == "getIds") {   //  **************** getIds *****************

        /// std::vector<int> getIds();

        const std::vector<int>& result = service->getIds();

/// ######### serialize response ###########

        ::ngrest::Object* responseNode = context->pool->alloc< ::ngrest::Object>();
        ::ngrest::NamedNode* resultNode = context->pool->alloc< ::ngrest::NamedNode>("result");
        responseNode->firstChild = resultNode;

// count = 1
        ::ngrest::Array* resultArray = context->pool->alloc< ::ngrest::Array>();
        resultNode->node = resultArray;
        ::ngrest::LinkedNode* lastResultArrayItem = nullptr;
        for (const auto& it : result) {
            ::ngrest::LinkedNode* resultArrayItem = context->pool->alloc< ::ngrest::LinkedNode>();
            if (lastResultArrayItem == nullptr) {
                resultArray->firstChild = resultArrayItem;
            } else {
                lastResultArrayItem->nextSibling = resultArrayItem;
            }
            lastResultArrayItem = resultArrayItem;
        // SERIALIZE : int generic
            char resultItemBuff[NGREST_NUM_TO_STR_BUFF_SIZE];
            NGREST_ASSERT(::ngrest::toCString(it, resultItemBuff, NGREST_NUM_TO_STR_BUFF_SIZE), "Failed to serialize int");
            const char* resultItemCStr = context->pool->putCString(resultItemBuff, true);
            resultArrayItem->node = context->pool->alloc< ::ngrest::Value>(::ngrest::ValueType::Number, resultItemCStr);
        // END SERIALIZE: int generic
        }

        context->response->node = responseNode;
/// ######### serialize response end ###########

        context->callback->success();
    } else if (operation->name == "create") {   //  **************** create *****************

        /// void create(int id, const std::string& data);

/// ######### deserialize request ###########
        NGREST_ASSERT(context->request->node, "Request expected for ngrest.examples.Crud/create");
        NGREST_ASSERT_PARAM(context->request->node->type == ::ngrest::NodeType::Object);

        const ::ngrest::Object* request = static_cast<const ::ngrest::Object*>(context->request->node);

        int id;
        std::string data;

        ::ngrest::ObjectModelUtils::getChildValue(request, "id", id);
        ::ngrest::ObjectModelUtils::getChildValue(request, "data", data);
/// ######### deserialize request end ###########

        service->create(id, data);

        context->callback->success();
    } else if (operation->name == "read") {   //  **************** read *****************

        /// std::string read(int id);

/// ######### deserialize request ###########
        NGREST_ASSERT(context->request->node, "Request expected for ngrest.examples.Crud/read");
        NGREST_ASSERT_PARAM(context->request->node->type == ::ngrest::NodeType::Object);

        const ::ngrest::Object* request = static_cast<const ::ngrest::Object*>(context->request->node);

        int id;

        ::ngrest::ObjectModelUtils::getChildValue(request, "id", id);
/// ######### deserialize request end ###########

        const std::string& result = service->read(id);

/// ######### serialize response ###########

        ::ngrest::Object* responseNode = context->pool->alloc< ::ngrest::Object>();
        ::ngrest::NamedNode* resultNode = context->pool->alloc< ::ngrest::NamedNode>("result");
        responseNode->firstChild = resultNode;

        resultNode->node = context->pool->alloc< ::ngrest::Value>(::ngrest::ValueType::String, result.c_str());

        context->response->node = responseNode;
/// ######### serialize response end ###########

        context->callback->success();
    } else if (operation->name == "update") {   //  **************** update *****************

        /// void update(int id, const std::string& data);

/// ######### deserialize request ###########
        NGREST_ASSERT(context->request->node, "Request expected for ngrest.examples.Crud/update");
        NGREST_ASSERT_PARAM(context->request->node->type == ::ngrest::NodeType::Object);

        const ::ngrest::Object* request = static_cast<const ::ngrest::Object*>(context->request->node);

        int id;
        std::string data;

        ::ngrest::ObjectModelUtils::getChildValue(request, "id", id);
        ::ngrest::ObjectModelUtils::getChildValue(request, "data", data);
/// ######### deserialize request end ###########

        service->update(id, data);

        context->callback->success();
    } else if (operation->name == "del") {   //  **************** del *****************

        /// void del(int id);

/// ######### deserialize request ###########
        NGREST_ASSERT(context->request->node, "Request expected for ngrest.examples.Crud/del");
        NGREST_ASSERT_PARAM(context->request->node->type == ::ngrest::NodeType::Object);

        const ::ngrest::Object* request = static_cast<const ::ngrest::Object*>(context->request->node);

        int id;

        ::ngrest::ObjectModelUtils::getChildValue(request, "id", id);
/// ######### deserialize request end ###########

        service->del(id);

        context->callback->success();
    } else {
        NGREST_THROW_ASSERT("No operation " + operation->name + " found in service Crud");
    }
}

const ::ngrest::ServiceDescription* CrudWrapper::getDescription() const
{
    static ::ngrest::ServiceDescription description = {
        "ngrest.examples.Crud", // name
        "ngrest/examples/data", // location
        R"(Example on how to use a service in CRUD model)", // description
        R"()", // details
        {
            {
                "getIds",             // name
                "/", // location
                static_cast<int>(::ngrest::HttpMethod::GET),
                "GET",
                false,
                R"(get all identifiers from resource)", // description
                R"(example of request:
      http://server:port/ngrest/examples/data/)", // details
                {

                },
                ::ngrest::ParameterDescription::Type::Array, false
            },
            {
                "create",             // name
                "/{id}", // location
                static_cast<int>(::ngrest::HttpMethod::POST),
                "POST",
                false,
                R"(create new object in resource)", // description
                R"(example of request:
      http://server:port/ngrest/examples/data/1
      -- body -----------------------
      {
        "data": "Object #1"
      })", // details
                {
                    {"id", ::ngrest::ParameterDescription::Type::Number, false},
                    {"data", ::ngrest::ParameterDescription::Type::String, false}
                },
                ::ngrest::ParameterDescription::Type::Undefined, false
            },
            {
                "read",             // name
                "/{id}", // location
                static_cast<int>(::ngrest::HttpMethod::GET),
                "GET",
                false,
                R"(create get object by identifier)", // description
                R"(example of request:
      http://server:port/ngrest/examples/data/1)", // details
                {
                    {"id", ::ngrest::ParameterDescription::Type::Number, false}
                },
                ::ngrest::ParameterDescription::Type::String, false
            },
            {
                "update",             // name
                "/{id}", // location
                static_cast<int>(::ngrest::HttpMethod::PUT),
                "PUT",
                false,
                R"(update existing object in resource)", // description
                R"(example of request:
      http://server:port/ngrest/examples/data/1
      -- body -----------------------
      {
        "data": "Updated object #1"
      })", // details
                {
                    {"id", ::ngrest::ParameterDescription::Type::Number, false},
                    {"data", ::ngrest::ParameterDescription::Type::String, false}
                },
                ::ngrest::ParameterDescription::Type::Undefined, false
            },
            {
                "del",             // name
                "/{id}", // location
                static_cast<int>(::ngrest::HttpMethod::DELETE),
                "DELETE",
                false,
                R"(delete existing object by identifier)", // description
                R"(example of request:
      http://server:port/ngrest/examples/data/1)", // details
                {
                    {"id", ::ngrest::ParameterDescription::Type::Number, false}
                },
                ::ngrest::ParameterDescription::Type::Undefined, false
            }
        }
    };

    return &description;
}


}
}

