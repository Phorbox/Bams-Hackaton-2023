<?php

function redirect($uri)
{ ?>
    <script type="text/javascript">
        document.location.href = "<?php echo $uri; ?>";
    </script>
<?php die;
}
// Be at least 8 characters long.
// contain at least one uppercase letter
// One lowercase letter
// One digit
// One special character

function random_str()
{
    $length = 20;
    $upperSpace = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $lowerSpace = 'abcdefghijklmnopqrstuvwxyz';
    $digitSpace = '0123456789';
    $specialSpace = '!@#$%^&*';
    $specificspace = [$upperSpace, $lowerSpace, $digitSpace, $specialSpace];
    $keyspace = $upperSpace . $lowerSpace . $digitSpace . $specialSpace;



    $str = '';
    $max = mb_strlen($keyspace, '8bit') - 1;
    if ($max < 1) {
        throw new Exception('$keyspace must be at least two characters long');
    }
    $i = 0;
    while ($i < $length) {

        if (count($specificspace) > 0) {
            $index = random_int(0, count($specificspace) - 1);
            $curSpace = $specificspace[$index];
            $str .=  $curSpace[random_int(0, strlen($curSpace) - 1)];
            unset($specificspace[$index]);
            $specificspace = array_values($specificspace);
            $i++;
        }

        $str .= $keyspace[random_int(0, $max)];
        $i++;
    }

    return $str;
}
