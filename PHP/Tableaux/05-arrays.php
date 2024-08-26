<?php

$names = ['Joe', 'Jack', 'Léa', 'Zoé', 'Néo' ];

function firstItem(array $names): void
{
    $first = array_values($names)[0];
    echo $first;
}

firstItem($names);
echo PHP_EOL;

function lastItem(array $names): void
{
    $last = array_slice($names, -1)[0];
    echo $last;
}

lastItem($names);
echo PHP_EOL;

function sortItem(array $names): array
{
    rsort($names);
    print_r($names);

    return $names;

}

echo sortItem($names);
echo PHP_EOL;

function stringItems(array $names): string
{
    sort($names);
    print_r($names);

    return implode(", ", $names);
}

echo stringItems($names);
echo PHP_EOL;