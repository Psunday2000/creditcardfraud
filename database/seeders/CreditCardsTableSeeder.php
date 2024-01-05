<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\CreditCard;
use Faker\Factory as Faker;

class CreditCardsTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        foreach (range(1, 20) as $index) {
            CreditCard::create([
                'user_id' => $faker->numberBetween(1, 20), // Assuming you have 5 users
                'card_number' => $faker->creditCardNumber,
                'expiration_date' => $faker->creditCardExpirationDate,
                'cvv' => $faker->randomNumber(3),
                'security_question' => 'What is your favorite color?',
                'security_answer' => $faker->colorName, // Use a method that generates English words
            ]);
        }
    }
}
