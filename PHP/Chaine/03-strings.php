<?php
    function getMC2(): string {
        $lastname = 'Einstein';
        return $lastname;
    }

    function getUserName(string $firstname, string $lastname) : string {
        return $firstname . $lastname;
    }

    function getFullName(string $lastname, string $firstname) : string {
        return $firstname . ' ' . strtoupper($lastname);
    }

    function askUser() {
        return 'Bonjour ' . getFullName('Doe', 'John,') . '. Connaissez vous ' . getMC2() . ' ?';
    }

    echo getMC2();
    echo PHP_EOL;
    echo getUserName('albert', 'einstein');
    echo PHP_EOL;
    echo getFullName('einstein', 'albert');
    echo PHP_EOL;
    echo askUser();