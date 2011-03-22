float32 trans_speed	# always positive, indicates magnitude in m/s w.r.t local frame
float32 trans_direction	# in radians w.r.t local frame
float32 rot_speed	# always positive, indicates magnitude in radians w.r.t local frame
bool rot_direction	# ccw:+, cw:- w.r.t local frame
float32 dribbler_speed	# always positive, indicates magnitude in rpm
bool dribbler_direction	# ccw:+, cw:-
uint8 kicker_speed	# always positive, indicates magnitude between [0,100]	
bool return_battery	# true if battery level info is requested. false otherwise
bool return_temp_1	# true if temp_1 level info is requested. false otherwise
bool return_temp_2	# true if temp_2 level info is requested. false otherwise
bool return_temp_3	# true if temp_3 level info is requested. false otherwise

