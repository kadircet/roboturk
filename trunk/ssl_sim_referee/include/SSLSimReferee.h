/*
 * SSLSimReferee.h
 *
 *  Created on: Mar 14, 2011
 *      Author: kadir
 */

#ifndef SSLSIMReferee_H_
#define SSLSIMReferee_H_

#include "SSLGlobalStateSubscriber.h"

class SSLSimReferee : public SSLGlobalStateSubscriber{
public:
	SSLSimReferee(const ros::NodeHandle& n);
	virtual ~SSLSimReferee();
};

#endif /* SSLSIMReferee_H_ */
