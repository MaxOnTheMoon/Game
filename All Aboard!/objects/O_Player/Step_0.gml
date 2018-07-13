//Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);

//Calculating Movement 
var move = key_right - key_left;
velx = move * walkspeed;

//Gravity
vely += grav;

//Vertical Collision
if(place_meeting(x,y + vely, O_Train)){
	while(!place_meeting(x,y+sign(vely), O_Train)){
		y = y + sign(vely);
	}
	vely = 0;
}

//Jumping
if(place_meeting(x,y+1,O_Train) and key_jump){
	vely = -3;
}

//Movement
x = x + velx;
y = y + vely;

