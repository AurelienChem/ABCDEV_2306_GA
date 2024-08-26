<?php
    date_default_timezone_set('UTC');

    function getToday() {
        $date = new DateTime('now');
        return $date->format('d/m/Y');
    }

    echo getToday();
    echo PHP_EOL;

    function getTimeLeft(string $annee, string $mois, string $jour) : string {
        $date = new DateTime('now');
        $ladate = $date->format('Y-m-d');
        $maxdays = cal_days_in_month(CAL_GREGORIAN, $mois, $annee);
        $ladateseconde = strtotime($date->format('Y-m-d'));
        $customdateseconde = strtotime($annee . '-' . $mois . '-' . $jour);
        $datediff = $customdateseconde - $ladateseconde;

        if($annee . '-' . $mois . '-' . $jour === $ladate) {
            return "Aujourd'hui";
        }
        elseif($annee . '-' . $mois . '-' . $jour < $ladate) {
            return "Évènement passé";
        }
        elseif($datediff <= 60 * 60 * 24 * 31 && $datediff >= (60 /* secondes */ * 60 /* minutes */ *24 /* heures */)) {
            return 'Dans ' . round($datediff / (60 * 60 * 24))  . ' jour(s)';
        }
        elseif($datediff < 60 * 60 * 24 * 31 * 365.25 && $datediff > 60 * 60 * 24 * 31) {
            return 'Dans ' . round($datediff / (60 * 60 * 24 * $maxdays)) . ' mois et ' . round($datediff / (60 * 60 * 24)) . ' jour(s)';
        }
    }

    echo getTimeLeft('2024','08','26');
    echo PHP_EOL;
    echo getTimeLeft('2024','12','25');
