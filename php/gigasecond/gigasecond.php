<?php

function from(DateTime $date): DateTime
{
  $new_date = clone $date;
  $gigasecond = 10**9;
  return $new_date->modify("+{$gigasecond} seconds");
}