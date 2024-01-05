<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCreditCardsTable extends Migration
{
    public function up()
    {
        Schema::create('credit_cards', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained();
            $table->string('card_number');
            $table->date('expiration_date');
            $table->string('cvv');
            $table->string('security_question');
            $table->string('security_answer');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('credit_cards');
    }
}
