<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class PersonTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
     DB::table('person')->insert([
    'first_name' => 'fazley',
    'last_name' => 'rabbi',
    'email' => 'john1@doe.com',
    'password' => Hash::make('1234')
]);
    }
}
