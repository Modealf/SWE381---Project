<?php

session_start();
session_destroy();
header('location:../index.php?message=bye see you next time!');
