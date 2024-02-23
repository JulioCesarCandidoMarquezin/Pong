if other.y < self.y {
	vspeed = abs(vspeed); 
    vspeed += 0.25
}

if other.y > self.y {
	vspeed = -abs(vspeed);
    vspeed -= 0.25
}