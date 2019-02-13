/// @description Insert description here
// You can write your code in this editor
score += 10;
with(other)
{
	instance_destroy();
	if (sprite_index == sprAsteroidLarge)
    {
		repeat(2)
        {
			var new_asteroid = instance_create_layer(x, y, "Instances", objAsteroid);
			new_asteroid.sprite_index = sprAsteroidMedium;
        }
    }
	else if (sprite_index == sprAsteroidMedium)
    {
		repeat(2)
        {
			var new_asteroid = instance_create_layer(x, y, "Instances", objAsteroid);
			new_asteroid.sprite_index = sprAsteroidSmall;
        }
	}
	repeat(10)
    {
		instance_create_layer(x, y, "Instances", objDebris);
    }
}