<?php
    use Illuminate\Database\Migrations\Migration;
    use Illuminate\Database\Schema\Blueprint;
    use Illuminate\Support\Facades\Schema;
    return new class extends Migration {
        /**
         * Run the migrations.
         *
         * @return void
         */
        public function up() {
            Schema::create('users', function (Blueprint $table) {
                $table->engine = 'InnoDB';
                $table->bigIncrements('id');
                $table->string('name', 65)->nullable(false);
                $table->string('email')->unique()->nullable(false);
                $table->timestamp('email_verified_at')->nullable();
                $table->string('password')->nullable(false);
                $table->bigInteger('rol_id')->unsigned();  // unsigned() es necesario siempre que el campo a relacionar sea númerico.
                $table->rememberToken();
                $table->timestamps();
                // Claves foraneas.
                $table->foreign('rol_id')->references('id')->on('roles')->onDelete('cascade')->onUpdate('cascade');
            });
        }
        /**
         * Reverse the migrations.
         *
         * @return void
         */
        public function down() {
            Schema::dropIfExists('users');
        }
    };
?>