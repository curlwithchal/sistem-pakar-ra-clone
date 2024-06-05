<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Kelamin;
use Faker\Generator as Faker;

$factory->define(Kelamin::class, function (Faker $faker) {
    return [
            'js_kelamin' => $this->faker->js_kelamin
    ];
});
