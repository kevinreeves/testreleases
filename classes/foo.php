<?php

public function foo()
{
    if (true) {
        print "here";
        if (false) {
            print "won't see this";
        }
    }
}
