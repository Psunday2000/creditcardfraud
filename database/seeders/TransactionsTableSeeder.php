<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Transaction;
use Faker\Factory as Faker;

class TransactionsTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        foreach (range(1, 10) as $index) {
            Transaction::create([
                'user_id' => $faker->numberBetween(1, 10), // Assuming you have 5 users
                'credit_card_id' => $faker->numberBetween(1, 5), // Assuming you have 5 credit cards
                'status' => $faker->randomElement(['success', 'failure']),
            ]);
        }
    }
}
