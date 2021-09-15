<?php

$conn = mysqli_connect("localhost", "root", "", "event_ticket_booking");

if (!$conn) {
	die("Connection Failed: ".mysqli_connect_error());
}