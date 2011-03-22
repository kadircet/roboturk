#include "SSLSimTransceiver.h"


int main(int argc, char **argv)
{
	ros::init(argc, argv, "ssl_sim_transceiver");
	ros::NodeHandle n;
	SSLSimTransceiver* ssl_sim_transceiver = new SSLSimTransceiver(n);
	ssl_sim_transceiver->Spin();

	return 0;
}
