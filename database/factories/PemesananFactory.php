<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pemesanan>
 */
class PemesananFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'nama_lengkap' => $this->faker->name,
            'email' => $this->faker->unique()->safeEmail,
            'no_hp' => $this->faker->phoneNumber,
            'alamat' => $this->faker->address,
            'kota' => $this->faker->city,
            'kodepos' => $this->faker->numberBetween(10110, 99986),
            'kode_produk' => $this->faker->unique()->regexify('INV/' . $this->faker->date('Ymd') . '/MPL/' . $this->faker->numberBetween(10500, 43499)),
        ];
    }
}
