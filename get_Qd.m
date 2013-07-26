function Qd = get_Qd(dt, q, ew, ea, n_a, n_ba, n_w, n_bw, n_L,  n_qvw, ...
                     n_qci,  n_pic)
	q1 = q(4);
	q2 = q(1);
	q3 = q(2);
	q4 = q(3);

	ew1 = ew(1);
    ew2 = ew(2);
    ew3 = ew(3);
    
	ea1 = ea(1);
    ea2 = ea(2);
    ea3 = ea(3);
    
	n_a1 = n_a(1);
    n_a2 = n_a(2);
    n_a3 = n_a(3);
    
	n_ba1 = n_ba(1);
    n_ba2 = n_ba(2);
    n_ba3 = n_ba(3);
    
	n_w1 = n_w(1);
    n_w2 = n_w(2);
    n_w3 = n_w(3);
    
	n_bw1 = n_bw(1);
    n_bw2 = n_bw(2);
    n_bw3 = n_bw(3);
    
	n_qvw1 = n_qvw(1);
    n_qvw2 = n_qvw(2);
    n_qvw3 = n_qvw(3);
    
	t343 = dt*dt;
	t348 = q1*q4*2.0;
	t349 = q2*q3*2.0;
	t344 = t348-t349;
	t356 = q1*q3*2.0;
	t357 = q2*q4*2.0;
	t345 = t356+t357;
	t350 = q1*q1;
	t351 = q2*q2;
	t352 = q3*q3;
	t353 = q4*q4;
	t346 = t350+t351-t352-t353;
	t347 = n_a1*n_a1;
	t354 = n_a2*n_a2;
	t355 = n_a3*n_a3;
	t358 = q1*q2*2.0;
	t359 = t344*t344;
	t360 = t345*t345;
	t361 = t346*t346;
	t363 = ea2*t345;
	t364 = ea3*t344;
	t362 = t363+t364;
	t365 = t362*t362;
	t366 = t348+t349;
	t367 = t350-t351+t352-t353;
	t368 = q3*q4*2.0;
	t369 = t356-t357;
	t370 = t350-t351-t352+t353;
	t371 = n_w3*n_w3;
	t372 = t358+t368;
	t373 = n_w2*n_w2;
	t374 = n_w1*n_w1;
	t375 = dt*t343*t346*t347*t366*(1.0/3.0);
	t376 = t358-t368;
	t377 = t343*t346*t347*t366*(1.0/2.0);
	t378 = t366*t366;
	t379 = t376*t376;
	t380 = ea1*t367;
	t391 = ea2*t366;
	t381 = t380-t391;
	t382 = ea3*t367;
	t383 = ea2*t376;
	t384 = t382+t383;
	t385 = t367*t367;
	t386 = ea1*t376;
	t387 = ea3*t366;
	t388 = t386+t387;
	t389 = ea2*t370;
	t407 = ea3*t372;
	t390 = t389-t407;
	t392 = ea1*t372;
	t393 = ea2*t369;
	t394 = t392+t393;
	t395 = ea1*t370;
	t396 = ea3*t369;
	t397 = t395+t396;
	t398 = n_ba1*n_ba1;
	t399 = n_ba2*n_ba2;
	t400 = n_ba3*n_ba3;
	t401 = dt*t343*t345*t355*t370*(1.0/3.0);
	t402 = t401-dt*t343*t346*t347*t369*(1.0/3.0)-dt*t343*t344*t354*t372*(1.0/3.0);
	t403 = dt*t343*t354*t367*t372*(1.0/3.0);
	t404 = t403-dt*t343*t347*t366*t369*(1.0/3.0)-dt*t343*t355*t370*t376*(1.0/3.0);
	t405 = t343*t345*t355*t370*(1.0/2.0);
	t406 = dt*t343*t362*t373*t397*(1.0/6.0);
	t421 = t343*t346*t347*t369*(1.0/2.0);
	t422 = dt*t343*t362*t371*t394*(1.0/6.0);
	t423 = t343*t344*t354*t372*(1.0/2.0);
	t424 = dt*t343*t362*t374*t390*(1.0/6.0);
	t408 = t405+t406-t421-t422-t423-t424;
	t409 = t343*t354*t367*t372*(1.0/2.0);
	t410 = dt*t343*t374*t384*t390*(1.0/6.0);
	t411 = dt*t343*t373*t388*t397*(1.0/6.0);
	t463 = t343*t355*t370*t376*(1.0/2.0);
	t464 = t343*t347*t366*t369*(1.0/2.0);
	t465 = dt*t343*t371*t381*t394*(1.0/6.0);
	t412 = t409+t410+t411-t463-t464-t465;
	t413 = t369*t369;
	t414 = t372*t372;
	t415 = t370*t370;
	t416 = t343*t354*t359*(1.0/2.0);
	t417 = t343*t355*t360*(1.0/2.0);
	t418 = t343*t347*t361*(1.0/2.0);
	t419 = t416+t417+t418-dt*t343*t365*t371*(1.0/6.0)-dt*t343*t365*t373*(1.0/6.0)-dt*t343*t365*t374*(1.0/6.0);
	t453 = t343*t344*t354*t367*(1.0/2.0);
	t454 = t343*t345*t355*t376*(1.0/2.0);
	t420 = t377-t453-t454;
	t426 = ew2*t362;
	t427 = ew3*t362;
	t425 = t426-t427;
	t428 = dt*t365;
	t429 = ew1*ew1;
	t430 = ew2*ew2;
	t431 = ew3*ew3;
	t432 = t430+t431;
	t433 = t362*t432;
	t434 = ew1*t343*t365;
	t435 = t429+t431;
	t436 = t362*t435;
	t443 = ew2*ew3*t362;
	t437 = t433+t436-t443;
	t438 = ew1*t362*t394;
	t511 = ew1*t362*t397;
	t439 = t438-t511;
	t440 = t343*t439*(1.0/2.0);
	t441 = t429+t430;
	t442 = t362*t441;
	t444 = t390*t432;
	t445 = ew2*t394;
	t446 = ew3*t397;
	t447 = t445+t446;
	t448 = ew1*ew2*t362;
	t449 = ew1*ew3*t362;
	t450 = ew1*ew3*t362*(1.0/2.0);
	t451 = dt*t362;
	t452 = ew1*t343*t362*(1.0/2.0);
	t455 = dt*t343*t362*t374*t384*(1.0/6.0);
	t456 = t343*t347*t378*(1.0/2.0);
	t457 = t343*t355*t379*(1.0/2.0);
	t458 = t381*t381;
	t459 = t384*t384;
	t460 = t343*t354*t385*(1.0/2.0);
	t461 = t388*t388;
	t462 = t456+t457+t460-dt*t343*t371*t458*(1.0/6.0)-dt*t343*t374*t459*(1.0/6.0)-dt*t343*t373*t461*(1.0/6.0);
	t466 = t433+t442-t443;
	t467 = ew1*t362*t388;
	t468 = ew1*t362*t381;
	t469 = t467+t468;
	t470 = t343*t469*(1.0/2.0);
	t471 = t384*t432;
	t472 = ew2*t381;
	t479 = ew3*t388;
	t473 = t472-t479;
	t474 = -t433+t448+t449;
	t475 = dt*t343*t346*t366*t398*(1.0/3.0);
	t476 = dt*t346*t347*t366;
	t477 = ew2*ew3*t381;
	t492 = t388*t435;
	t478 = t471+t477-t492;
	t480 = t472-t479;
	t481 = ew1*ew3*t381;
	t482 = ew1*ew2*t388;
	t483 = t471+t481+t482;
	t484 = ew2*ew3*t388;
	t486 = t381*t441;
	t485 = t471+t484-t486;
	t487 = t394*t441;
	t488 = ew2*ew3*t397;
	t489 = t444+t487+t488;
	t490 = t397*t435;
	t491 = ew2*ew3*t394;
	t493 = ew1*t381*t397;
	t541 = ew1*t388*t394;
	t494 = t493-t541;
	t495 = t343*t494*(1.0/2.0);
	t496 = ew1*ew2*t397;
	t527 = ew1*ew3*t394;
	t497 = t444+t496-t527;
	t498 = ew2*ew3*t381*(1.0/2.0);
	t499 = ew1*t343*t381*(1.0/2.0);
	t500 = t384*t432*(1.0/2.0);
	t501 = ew2*ew3*t388*(1.0/2.0);
	t502 = n_bw1*n_bw1;
	t503 = n_bw3*n_bw3;
	t504 = t343*t347*t413*(1.0/2.0);
	t505 = t343*t354*t414*(1.0/2.0);
	t506 = t397*t397;
	t507 = t390*t390;
	t508 = t343*t355*t415*(1.0/2.0);
	t509 = t394*t394;
	t510 = t504+t505+t508-dt*t343*t373*t506*(1.0/6.0)-dt*t343*t371*t509*(1.0/6.0)-dt*t343*t374*t507*(1.0/6.0);
	t512 = -t444+t490+t491;
	t513 = t397*t437*(1.0/2.0);
	t514 = t362*t394*t429;
	t515 = dt*t362*t397;
	t516 = t362*t489*(1.0/2.0);
	t517 = t394*t466*(1.0/2.0);
	t518 = t362*t397*t429;
	t519 = t516+t517+t518;
	t520 = dt*t362*t394;
	t521 = t440+t520-dt*t343*t519*(1.0/3.0);
	t522 = t371*t521;
	t523 = t362*t447;
	t524 = t390*t425;
	t525 = t523+t524;
	t526 = t343*t525*(1.0/2.0);
	t528 = t425*t447;
	t529 = t390*t474*(1.0/2.0);
	t530 = t528+t529-t362*t497*(1.0/2.0);
	t531 = dt*t343*t530*(1.0/3.0);
	t532 = dt*t362*t390;
	t533 = t526+t531+t532;
	t534 = t374*t533;
	t535 = dt*t343*t345*t370*t400*(1.0/3.0);
	t536 = dt*t345*t355*t370;
	t537 = t381*t489*(1.0/2.0);
	t538 = t388*t397*t429;
	t539 = t537+t538-t394*t485*(1.0/2.0);
	t540 = dt*t343*t539*(1.0/3.0);
	t542 = t495+t540-dt*t381*t394;
	t543 = t388*t512*(1.0/2.0);
	t544 = t381*t394*t429;
	t545 = t543+t544-t397*t478*(1.0/2.0);
	t546 = dt*t343*t545*(1.0/3.0);
	t547 = t495+t546-dt*t388*t397;
	t548 = t373*t547;
	t549 = t384*t447;
	t550 = t549-t390*t473;
	t551 = t343*t550*(1.0/2.0);
	t552 = t384*t497*(1.0/2.0);
	t553 = t390*t483*(1.0/2.0);
	t554 = t447*t473;
	t555 = t552+t553+t554;
	t556 = dt*t384*t390;
	t557 = t551+t556-dt*t343*t555*(1.0/3.0);
	t558 = dt*t343*t367*t372*t399*(1.0/3.0);
	t559 = dt*t354*t367*t372;
	t560 = t548+t558+t559-t371*t542-t374*t557-dt*t347*t366*t369-dt*t355*t370*t376-dt*t343*t366*t369*t398*(1.0/3.0)-dt*t343*t370*t376*t400*(1.0/3.0);
	t561 = ew1*t343*t394*t397;
	t562 = ew1*t343*t397*(1.0/2.0);
	t563 = n_bw2*n_bw2;
	t564 = dt*t343*t362*t374*(1.0/6.0);
	t565 = dt*t343*t374*t390*(1.0/6.0);
	t566 = ew1*ew2*t362*(1.0/2.0);
	t567 = -t433+t450+t566;
	t568 = dt*t343*t567*(1.0/3.0);
	t569 = t343*t425*(1.0/2.0);
	t570 = t451+t568+t569;
	t571 = dt*t343*t362*t373*t432*(1.0/6.0);
	t572 = dt*t343*t362*t371*t432*(1.0/6.0);
	t573 = t571+t572-t374*t570;
	t574 = ew1*ew2*t397*(1.0/2.0);
	t575 = t444+t574-ew1*ew3*t394*(1.0/2.0);
	t576 = t343*t447*(1.0/2.0);
	t577 = dt*t390;
	t578 = t576+t577-dt*t343*t575*(1.0/3.0);
	t579 = dt*t343*t371*t394*t432*(1.0/6.0);
	t580 = t579-t374*t578-dt*t343*t373*t397*t432*(1.0/6.0);
	t581 = dt*t343*t373*t388*(1.0/6.0);
	t582 = t362*t432*(1.0/2.0);
	t583 = ew2*ew3*t362*(1.0/2.0);
	t584 = t362*t429;
	t585 = t583+t584;
	t586 = ew3*t473;
	t587 = ew1*ew2*t384*(1.0/2.0);
	t588 = t586+t587;
	t589 = dt*t343*t588*(1.0/3.0);
	t590 = t374*(t589-ew3*t343*t384*(1.0/2.0));
	t591 = t388*t429;
	t592 = t498+t591;
	t593 = dt*t343*t592*(1.0/3.0);
	t594 = t499+t593;
	t595 = -t492+t498+t500;
	t596 = dt*t343*t595*(1.0/3.0);
	t597 = dt*t388;
	t598 = -t499+t596+t597;
	t599 = t590-t371*t594-t373*t598;
	t600 = t397*t429;
	t601 = ew2*ew3*t394*(1.0/2.0);
	t602 = ew1*t343*t394*(1.0/2.0);
	t603 = ew3*t447;
	t604 = t603-ew1*ew2*t390*(1.0/2.0);
	t605 = dt*t343*t604*(1.0/3.0);
	t606 = ew3*t343*t390*(1.0/2.0);
	t607 = t605+t606;
	t608 = t374*t607;
	t609 = t390*t432*(1.0/2.0);
	t610 = dt*t397;
	t611 = t430*(1.0/2.0);
	t612 = t431*(1.0/2.0);
	t613 = t611+t612;
	t614 = ew1*t343*(1.0/2.0);
	t615 = dt*t343*t362*t371*(1.0/6.0);
	t616 = dt*t343*t371*t381*(1.0/6.0);
	t617 = dt*t343*t371*t394*(1.0/6.0);
	t618 = ew2*t425;
	t619 = t450+t618;
	t620 = dt*t343*t619*(1.0/3.0);
	t621 = ew2*t343*t362*(1.0/2.0);
	t622 = t620+t621;
	t623 = dt*t343*t585*(1.0/3.0);
	t624 = t381*t429;
	t625 = t501+t624;
	t626 = dt*t343*t625*(1.0/3.0);
	t627 = ew1*t343*t388*(1.0/2.0);
	t628 = ew2*t473;
	t629 = t628-ew1*ew3*t384*(1.0/2.0);
	t630 = dt*t343*t629*(1.0/3.0);
	t631 = t630-ew2*t343*t384*(1.0/2.0);
	t632 = -t486+t500+t501;
	t633 = dt*t343*t632*(1.0/3.0);
	t634 = dt*t381;
	t635 = t627+t633+t634;
	t636 = ew2*t447;
	t637 = ew1*ew3*t390*(1.0/2.0);
	t638 = t636+t637;
	t639 = dt*t343*t638*(1.0/3.0);
	t640 = ew2*t343*t390*(1.0/2.0);
	t641 = t639+t640;
	t642 = t394*t429;
	t643 = ew2*ew3*t397*(1.0/2.0);
	t644 = t487+t609+t643;
	t645 = dt*t343*t644*(1.0/3.0);
	t646 = t562+t645-dt*t394;
	t647 = t371*t646;
	t648 = ew2*t343*(1.0/2.0);
	t649 = dt*ew1*ew3*t343*(1.0/6.0);
	t650 = t648+t649;
	t651 = t374*t650;
	t652 = t651-dt*t343*t371*t613*(1.0/3.0);
	t653 = dt*ew2*ew3*t343*(1.0/6.0);
	t654 = t614+t653;
	t655 = t371*t654;
	t656 = dt*t343*t397*t563*(1.0/6.0);
	t657 = dt*ew1*t343*t563*(1.0/6.0);
	t658 = dt*t343*t369*t398*(1.0/6.0);
	t659 = t343*t369*t398*(1.0/2.0);
	t660 = dt*t343*t344*t399*(1.0/6.0);
	t661 = t343*t344*t399*(1.0/2.0);
	t662 = dt*t343*t376*t400*(1.0/6.0);
	t663 = t343*t376*t400*(1.0/2.0);
    
    Qd = zeros(25);
    Qd(1,1) = dt*t343*t347*t361*(1.0/3.0)+dt*t343*t354*t359*(1.0/3.0)+dt*t343*t355*t360*(1.0/3.0);
	Qd(1,2) = t375-dt*t343*t345*t355*(t358-q3*q4*2.0)*(1.0/3.0)-dt*t343*t344*t354*t367*(1.0/3.0);
	Qd(1,3) = t402;
	Qd(1,4) = t419;
	Qd(1,5) = t420;
	Qd(1,6) = t408;
	Qd(1,7) = t564;
	Qd(1,9) = t615;
	Qd(1,13) = dt*t343*t346*t398*(-1.0/6.0);
	Qd(1,14) = t660;
	Qd(1,15) = dt*t343*t345*t400*(-1.0/6.0);
	Qd(2,1) = t375-dt*t343*t344*t354*t367*(1.0/3.0)-dt*t343*t345*t355*t376*(1.0/3.0);
	Qd(2,2) = dt*t343*t347*t378*(1.0/3.0)+dt*t343*t355*t379*(1.0/3.0)+dt*t343*t354*t385*(1.0/3.0);
	Qd(2,3) = t404;
	Qd(2,4) = t377+t455-t343*t344*t354*t367*(1.0/2.0)-t343*t345*t355*t376*(1.0/2.0)-dt*t343*t362*t371*t381*(1.0/6.0)-dt*t343*t362*t373*t388*(1.0/6.0);
	Qd(2,5) = t462;
	Qd(2,6) = t412;
	Qd(2,7) = dt*t343*t374*t384*(-1.0/6.0);
	Qd(2,8) = t581;
	Qd(2,9) = t616;
	Qd(2,13) = dt*t343*t366*t398*(-1.0/6.0);
	Qd(2,14) = dt*t343*t367*t399*(-1.0/6.0);
	Qd(2,15) = t662;
	Qd(3,1) = t402;
	Qd(3,2) = t404;
	Qd(3,3) = dt*t343*t347*t413*(1.0/3.0)+dt*t343*t354*t414*(1.0/3.0)+dt*t343*t355*t415*(1.0/3.0);
	Qd(3,4) = t408;
	Qd(3,5) = t412;
	Qd(3,6) = t510;
	Qd(3,7) = t565;
	Qd(3,8) = dt*t343*t373*t397*(-1.0/6.0);
	Qd(3,9) = t617;
	Qd(3,13) = t658;
	Qd(3,14) = dt*t343*t372*t399*(-1.0/6.0);
	Qd(3,15) = dt*t343*t370*t400*(-1.0/6.0);
	Qd(4,1) = t419;
	Qd(4,2) = t420;
	Qd(4,3) = t408;
	Qd(4,4) = t374*(t428+t343*t362*t425+dt*t343*(t362*(t448+t449-t362*t432)+t425*t425)*(1.0/3.0))+t373*(t428-t434+dt*t343*(t365*t429-t362*t437)*(1.0/3.0))+t371*(t428+t434+dt*t343*(t365*t429-t362*(t433+t442-ew2*ew3*t362))*(1.0/3.0))+dt*t347*t361+dt*t354*t359+dt*t355*t360+dt*t343*t359*t399*(1.0/3.0)+dt*t343*t361*t398*(1.0/3.0)+dt*t343*t360*t400*(1.0/3.0);
	Qd(4,5) = t475+t476-dt*t344*t354*t367-dt*t345*t355*t376-dt*t343*t344*t367*t399*(1.0/3.0)-dt*t343*t345*t376*t400*(1.0/3.0);
	Qd(4,6) = t522+t534+t535+t536-t373*(t440+t515-dt*t343*(t513+t514+t362*(t490+t491-t390*t432)*(1.0/2.0))*(1.0/3.0))-dt*t346*t347*t369-dt*t344*t354*t372-dt*t343*t346*t369*t398*(1.0/3.0)-dt*t343*t344*t372*t399*(1.0/3.0);
	Qd(4,7) = t573;
	Qd(4,9) = -t371*(t451+t452-dt*t343*(t442+t582-ew2*ew3*t362*(1.0/2.0))*(1.0/3.0))-t374*t622+t373*(t452-dt*t343*t585*(1.0/3.0));
	Qd(4,10) = dt*t343*t362*t502*(-1.0/6.0);
	Qd(4,12) = dt*t343*t362*t503*(-1.0/6.0);
	Qd(4,13) = t343*t346*t398*(-1.0/2.0);
	Qd(4,14) = t661;
	Qd(4,15) = t343*t345*t400*(-1.0/2.0);
	Qd(5,1) = t377-t453-t454+t455-dt*t343*t362*t371*t381*(1.0/6.0)-dt*t343*t362*t373*t388*(1.0/6.0);
	Qd(5,2) = t462;
	Qd(5,3) = t412;
	Qd(5,4) = t475+t476-t374*(t343*(t384*t425-t362*t473)*(1.0/2.0)-dt*t343*(t362*t483*(1.0/2.0)-t384*t474*(1.0/2.0)+t425*t473)*(1.0/3.0)+dt*t362*t384)+t371*(t470+dt*t362*t381+dt*t343*(t362*t485*(1.0/2.0)-t381*t466*(1.0/2.0)+t362*t388*t429)*(1.0/3.0))+t373*(-t470+dt*t362*t388+dt*t343*(t388*t437*(-1.0/2.0)+t362*t478*(1.0/2.0)+t362*t381*t429)*(1.0/3.0))-dt*t344*t354*t367-dt*t345*t355*t376-dt*t343*t344*t367*t399*(1.0/3.0)-dt*t343*t345*t376*t400*(1.0/3.0);
	Qd(5,5) = -t374*(-dt*t459+dt*t343*(t384*t483-t480*t480)*(1.0/3.0)+t343*t384*t473)+t373*(dt*t461+dt*t343*(t388*t478+t429*t458)*(1.0/3.0)-ew1*t343*t381*t388)+t371*(dt*t458+dt*t343*(t381*t485+t429*t461)*(1.0/3.0)+ew1*t343*t381*t388)+dt*t347*t378+dt*t355*t379+dt*t354*t385+dt*t343*t378*t398*(1.0/3.0)+dt*t343*t385*t399*(1.0/3.0)+dt*t343*t379*t400*(1.0/3.0);
	Qd(5,6) = t560;
	Qd(5,7) = -t374*(-dt*t384+t343*t473*(1.0/2.0)+dt*t343*(t471+ew1*ew2*t388*(1.0/2.0)+ew1*ew3*t381*(1.0/2.0))*(1.0/3.0))+dt*t343*t371*t381*t432*(1.0/6.0)+dt*t343*t373*t388*t432*(1.0/6.0);
	Qd(5,8) = t599;
	Qd(5,9) = -t374*t631-t371*t635-t373*(t626-ew1*t343*t388*(1.0/2.0));
	Qd(5,10) = dt*t343*t384*t502*(1.0/6.0);
	Qd(5,11) = dt*t343*t388*t563*(-1.0/6.0);
	Qd(5,12) = dt*t343*t381*t503*(-1.0/6.0);
	Qd(5,13) = t343*t366*t398*(-1.0/2.0);
	Qd(5,14) = t343*t367*t399*(-1.0/2.0);
	Qd(5,15) = t663;
	Qd(6,1) = t408;
	Qd(6,2) = t412;
	Qd(6,3) = t510;
	Qd(6,4) = t522+t534+t535+t536-t373*(t440+t515-dt*t343*(t513+t514+t362*t512*(1.0/2.0))*(1.0/3.0))-dt*t346*t347*t369-dt*t344*t354*t372-dt*t343*t346*t369*t398*(1.0/3.0)-dt*t343*t344*t372*t399*(1.0/3.0);
	Qd(6,5) = t560;
	Qd(6,6) = -t371*(t561-dt*t509+dt*t343*(t394*t489-t429*t506)*(1.0/3.0))+t373*(t561+dt*t506-dt*t343*(t397*t512-t429*t509)*(1.0/3.0))+t374*(dt*t507-dt*t343*(t390*t497-t447*t447)*(1.0/3.0)+t343*t390*t447)+dt*t347*t413+dt*t354*t414+dt*t355*t415+dt*t343*t398*t413*(1.0/3.0)+dt*t343*t399*t414*(1.0/3.0)+dt*t343*t400*t415*(1.0/3.0);
	Qd(6,7) = t580;
	Qd(6,8) = t608+t371*(dt*t343*(t600-ew2*ew3*t394*(1.0/2.0))*(1.0/3.0)-ew1*t343*t394*(1.0/2.0))+t373*(t602+t610-dt*t343*(t490+t601-t390*t432*(1.0/2.0))*(1.0/3.0));
	Qd(6,9) = t647-t374*t641-t373*(t562+dt*t343*(t642-ew2*ew3*t397*(1.0/2.0))*(1.0/3.0));
	Qd(6,10) = dt*t343*t390*t502*(-1.0/6.0);
	Qd(6,11) = t656;
	Qd(6,12) = dt*t343*t394*t503*(-1.0/6.0);
	Qd(6,13) = t659;
	Qd(6,14) = t343*t372*t399*(-1.0/2.0);
	Qd(6,15) = t343*t370*t400*(-1.0/2.0);
	Qd(7,1) = t564;
	Qd(7,3) = t565;
	Qd(7,4) = t573;
	Qd(7,6) = t580;
	Qd(7,7) = t374*(dt-dt*t343*t432*(1.0/3.0))+dt*t343*t502*(1.0/3.0);
	Qd(7,9) = t652;
	Qd(7,10) = t343*t502*(-1.0/2.0);
	Qd(8,1) = dt*t343*t362*t373*(1.0/6.0);
	Qd(8,2) = t581;
	Qd(8,3) = dt*t343*t373*t397*(-1.0/6.0);
	Qd(8,4) = -t371*(t452+t623)-t374*(dt*t343*(t566-ew3*t425)*(1.0/3.0)-ew3*t343*t362*(1.0/2.0))+t373*(-t451+t452+dt*t343*(t436+t582-t583)*(1.0/3.0));
	Qd(8,5) = t599;
	Qd(8,6) = t608+t373*(t602+t610-dt*t343*(t490+t601-t609)*(1.0/3.0))-t371*(t602-dt*t343*(t600-t601)*(1.0/3.0));
	Qd(8,7) = -t374*(ew3*t343*(1.0/2.0)-dt*ew1*ew2*t343*(1.0/6.0))-dt*t343*t373*t613*(1.0/3.0);
	Qd(8,8) = t373*(dt-dt*t343*t435*(1.0/3.0))+dt*t343*t563*(1.0/3.0)+dt*t343*t371*t429*(1.0/3.0)+dt*t343*t374*t431*(1.0/3.0);
	Qd(8,9) = t655-t373*(t614-dt*ew2*ew3*t343*(1.0/6.0))-dt*ew2*ew3*t343*t374*(1.0/3.0);
	Qd(8,10) = dt*ew3*t343*t502*(1.0/6.0);
	Qd(8,11) = t343*t563*(-1.0/2.0);
	Qd(8,12) = dt*ew1*t343*t503*(-1.0/6.0);
	Qd(9,1) = t615;
	Qd(9,2) = t616;
	Qd(9,3) = t617;
	Qd(9,4) = -t374*t622-t371*(t451+t452-dt*t343*(t442+t582-t583)*(1.0/3.0))+t373*(t452-t623);
	Qd(9,5) = -t374*t631-t371*t635-t373*(t626-t627);
	Qd(9,6) = t647-t374*t641-t373*(t562+dt*t343*(t642-t643)*(1.0/3.0));
	Qd(9,7) = t652;
	Qd(9,8) = t655-t373*(t614-t653)-dt*ew2*ew3*t343*t374*(1.0/3.0);
	Qd(9,9) = t371*(dt-dt*t343*t441*(1.0/3.0))+dt*t343*t503*(1.0/3.0)+dt*t343*t373*t429*(1.0/3.0)+dt*t343*t374*t430*(1.0/3.0);
	Qd(9,10) = dt*ew2*t343*t502*(-1.0/6.0);
	Qd(9,11) = t657;
	Qd(9,12) = t343*t503*(-1.0/2.0);
	Qd(10,4) = dt*t343*t362*t502*(-1.0/6.0);
	Qd(10,6) = dt*t343*t390*t502*(-1.0/6.0);
	Qd(10,7) = t343*t502*(-1.0/2.0);
	Qd(10,9) = dt*ew2*t343*t502*(-1.0/6.0);
	Qd(10,10) = dt*t502;
	Qd(11,4) = dt*t343*t362*t563*(-1.0/6.0);
	Qd(11,5) = dt*t343*t388*t563*(-1.0/6.0);
	Qd(11,6) = t656;
	Qd(11,8) = t343*t563*(-1.0/2.0);
	Qd(11,9) = t657;
	Qd(11,11) = dt*t563;
	Qd(12,4) = dt*t343*t362*t503*(-1.0/6.0);
	Qd(12,5) = dt*t343*t381*t503*(-1.0/6.0);
	Qd(12,6) = dt*t343*t394*t503*(-1.0/6.0);
	Qd(12,8) = dt*ew1*t343*t503*(-1.0/6.0);
	Qd(12,9) = t343*t503*(-1.0/2.0);
	Qd(12,12) = dt*t503;
	Qd(13,1) = dt*t343*t346*t398*(-1.0/6.0);
	Qd(13,2) = dt*t343*t366*t398*(-1.0/6.0);
	Qd(13,3) = t658;
	Qd(13,4) = t343*t346*t398*(-1.0/2.0);
	Qd(13,5) = t343*t366*t398*(-1.0/2.0);
	Qd(13,6) = t659;
	Qd(13,13) = dt*t398;
	Qd(14,1) = t660;
	Qd(14,2) = dt*t343*t367*t399*(-1.0/6.0);
	Qd(14,3) = dt*t343*t372*t399*(-1.0/6.0);
	Qd(14,4) = t661;
	Qd(14,5) = t343*t367*t399*(-1.0/2.0);
	Qd(14,6) = t343*t372*t399*(-1.0/2.0);
	Qd(14,14) = dt*t399;
	Qd(15,1) = dt*t343*t345*t400*(-1.0/6.0);
	Qd(15,2) = t662;
	Qd(15,3) = dt*t343*t370*t400*(-1.0/6.0);
	Qd(15,4) = t343*t345*t400*(-1.0/2.0);
	Qd(15,5) = t663;
	Qd(15,6) = t343*t370*t400*(-1.0/2.0);
	Qd(15,15) = dt*t400;
	Qd(16,16) = dt*(n_L*n_L);
	Qd(17,17) = dt*(n_qvw1*n_qvw1);
	Qd(18,18) = dt*(n_qvw2*n_qvw2);
	Qd(19,19) = dt*(n_qvw3*n_qvw3);
    
	Qd(20,20) = dt*(n_qci(1)*n_qci(1));
	Qd(21,21) = dt*(n_qci(2)*n_qci(2));
	Qd(22,22) = dt*(n_qci(3)*n_qci(3));
	Qd(23,23) = dt*(n_pic(1)*n_pic(1));
	Qd(24,24) = dt*(n_pic(2)*n_pic(2));
	Qd(25,25) = dt*(n_pic(3)*n_pic(3));


end
